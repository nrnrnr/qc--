#! /usr/bin/perl -w
#
# $Id$
#
# This script emits C-- and C source that tests parameter
# passing.  The parameter list passed from a caller to a callee is
# constructed from a signaure, which is a line of <width>/<hint> types
# read from stdin.
#
#   32/float 32/int 32/float
#   32/float 32/int 32/int
#   32/float 32/float
#   32/float 32/int
#   32/float
#   32/int
#
# The script reads signature lines from stdin and emits one or two files for
# each of them. The base name of the file is "testcc" but can be
# overridden with the -name option. Other options:
#
# -width=<int>  # pointer and wordsize, default 32
# -little       # emit little endian code, this is the default
# -big          # emit big endian code
# -conv=<name>  # use calling convention <name> (untested)
# -name=<name>  # base name for output files, default "testcc"
# -c            # generate a C file for the callee
#
#
# Whitout the -c flag, a single C-- source file is created for each
# signature. It contains a main() function and a callee(). The callee
# checks that the parameters passed from main() are indeed the ones that
# are expected. With the -c flag, the callee is implemented in C and
# emitted as an extra C source file. This tests parameter passing from
# C-- to C.
# 
# Perl's data structures are quite weak: hashes and lists cannot be
# nested inside a list without losing their identity. Therefore I
# believe this script is not a good basis for future extensions.
#

$w          = 32;               # word and pointer size
$bo         = "little";         # endianness
$conv       = "C";              # calling convention between caller/callee
$name       = "testcc";         # base name for files
$emitc      = 0;                # don't emit C code by default

#
# A parameter list is represented by one list, like this
#
# ("int"  , 32, 0x12345678, "i0", 
#  "float", 32, 0xfaceface, "i2", ...     
#
# Conceptually it is a list of 4-tuples, but Perl does not offer good
# support for lists inside lists, so we have a flat representation.
#
# 1 - hint of formal parameter
# 2 - width of formal parameter
# 3 - value passed to formal parameter
# 4 - name of formal parameter
#

sub lookup {
    my $key = shift(@_);
    if (exists $ctype{$key}) {
        return $ctype{$key};
    } else {
        die "what is the C type for $key?";
    }
}

#
# rand_bits n 
# returns n bits as a hexadecimal number, n must be mutiple of 4.
#
sub rand_bits {
    my $n = shift(@_);
    my $c = "0x";   # hex prefix
    unless ($n%4 == 0) { die "$n is not a multiple of 4" }
    
    for (my $i=0; $i<$n/4; $i++) {
        $c = $c . sprintf "%x", int(rand(16));
    }    
    return $c;
}

#
# formals returns the formal parameter list of the callee.
#

sub formals {
    my $r = "";
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        $r = $r . sprintf "\"%s\" bits%d $v", $hint, $width;
        if (@_) { $r = $r . "," }
    }    
    return "($r)";     
}

#
# return formal parameter list in C syntax.
#

sub c_formals {
    my $r = "";
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        $r = $r . sprintf "%s $v", lookup("$width/$hint");
        if (@_) { $r = $r . "," }
    }    
    return "($r)";     
}


#
# actuals returns an actual parameter list to be used by the caller.
#
sub actuals {
    my $r = "";
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        $r = $r . sprintf "\"%s\" %s::bits%d", $hint, $val, $width;
        if (@_) { $r = $r . "," }
    }    
    return "($r)";     
}
 
#
# main emits the procedure "main" which contains the call to "callee".
# We print "success" only after a successfull return from callee.
#
sub main {
    my $a = actuals (@_);
    print OUT<<"EOF";
    foreign "C" main("unsigned" bits$w iargc, "address" bits$w iargv) {
        foreign "$conv" callee$a ; 
        foreign "C" return(0);  // indicate success here, too
    }
EOF
}

#
# compare emits the body of the callee that checks the values of 
# parameters. The emitted code prints "failed" to stdout, if a parameter 
# has an unexpected value.
#
sub compare {
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        
        my $value = "${val}::bits$width";
        print OUT <<EOF;
        if $v != $value 
        {
            foreign "C" printf("address" failed, "address" filename,
                               "address" sig); 
            foreign "$conv" return();
        } 
EOF
    }        
}

#
# Emit comparison in C syntax.
#

sub c_compare {
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        my $unsig = "unsigned " . lookup("$width/int");
        
        if ($hint eq "float") {
            print CEE <<EOF;
            if (*($unsig*)(&$v) != $val) {
              printf("failed ($val) - %s sig [%s]\\n", TESTFILE, SIG); return;
            }
EOF
        } else {
            print CEE <<EOF;
            if ($v != $val) {
              printf("failed ($val) - %s sig [%s]\\n", TESTFILE, SIG); return;
            }
EOF
        }
    }
}


#
# callee emits the procedure "callee"
#
sub callee {
    my $fml = formals(@_);
    print OUT <<"EOF";
    foreign "$conv" callee$fml {
EOF
    compare(@_);
    print OUT <<"EOF";
        foreign "C" printf("address" success, "address" filename);
        foreign "$conv" return ();
    }
EOF
}

sub c_callee {
    my $fml = c_formals(@_);
    print CEE <<"EOF";
    void callee$fml {
EOF
    c_compare(@_);
    print CEE <<"EOF";
        printf("success - %s\\n", TESTFILE);
        return;
    }
EOF
}



#
# We handle command line arguments here 
#
#

foreach $t (@ARGV) {
       if ($t =~ /^-width=([0-9]+)$/)       { $w  = $1       }
    elsif ($t =~ /^-big$/)                  { $bo = "big"    } 
    elsif ($t =~ /^-little$/)               { $bo = "little" }
    elsif ($t =~ /^-conv=([a-zA-Z0-9-']+)$/){ $conv = $1     }
    elsif ($t =~ /^-name=(.*)$/)            { $name = $1     }             
    elsif ($t =~ /^-c$/)                    { $emitc = 1     }
    elsif ($t =~ /^-/)          { die "unknown option o: $t" }        
    else                        { die "unknown argument: $t" }
}

#
# map from C-- types to C types
#

%ctype = 
    ( "32/int"          => "int"
    , "32/unsigned"     => "unsigned" 
    , "32/float"        => "float"
    , "64/int"          => "long"
    , "64/float"        => "double"
    , "8/int"           => "char"
    );    

#
# Loop over all signatures read from stdin ..
#

$i = 0;
while (defined($sig=<STDIN>)) {
    # RRO: hack to remove all trailing whitespace from the line
    $sig =~ s/\ \n/\n/g;

    # loop over all types in one signature and build arg list
    my @args = ();
    my @ts   = split(/ +/, $sig);
    my $n    = 0;
    foreach $t (@ts) {
        if ($t =~ /([0-9]+)\/([a-z]+)/) {
            # The QC-- compiler has trouble with full 32-bit literal value.
            # As a hack, the 4 most significant bits in a value are not used. 
            my $hint  = $2;
            my $width = $1;
            my $msb   = 4;  ## don't use this many most significant bits
            my $x     = $hint eq "float" ? "a" : "i";
            my @v = ($hint, $width, rand_bits($width-$msb), "$x$n");
            $n++;
            push @args, @v;
        } else {
            die "unknown type $t in signature $sig";
       }     
    }
    # use arg list to emit C-- 
    my $cmm = sprintf "%s-mn-%03d.c--", $name, $i;
    my $cee = sprintf "%s-callee-%03d.c", $name, $i;
    $i++;

    # emit C-- code, and additioanlly C code, if $emitc is true.

    chop($sig);
    if ($emitc eq 0) {
        # just C-- code
        open (OUT, ">$cmm") || die "cannot open $cmm: $!";
        print OUT <<EOF;
        target byteorder $bo wordsize $w pointersize $w;
        import bits$w printf;
        export main;

        section "data" {
            align 8;
            success : bits8[] "success - %s\\n\\0";
            align 8;
            failed  : bits8[] "failed - %s sig [%s]\\n\\0";
			align 8;
		    filename: bits8[] "$cmm\\0";
			align 8;
		    sig     : bits8[] "$sig\\0";
        }
EOF
        main(@args);
        callee(@args);
        close (OUT) || die "cannot close $cmm: $!";
    } else {
        # C and C-- code
        open (OUT, ">$cmm") || die "cannot open $cmm: $!";
        open (CEE, ">$cee") || die "cannot open $cee: $!";

        print OUT <<EOF;
        target byteorder $bo wordsize $w pointersize $w;
        import bits$w printf;
        import bits$w callee; // import from C file
        export main;
EOF

        print CEE<<EOF;
        #include <stdio.h>
        #define TESTFILE "$cee"
        #define SIG      "$sig"
EOF
        
        main(@args);
        c_callee(@args);
        close (CEE) || die "cannot close $cee: $!";
        close (OUT) || die "cannot close $cmm: $!";
    }
}

exit 0;
