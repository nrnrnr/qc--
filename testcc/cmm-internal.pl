#! /usr/bin/perl -w
#
# $Id$
#
# This script emits C-- source code to stdout that tests parameter
# passing.  The parameter list passed from a caller to a callee is
# constructed from a signaure, which is a line of <width>/<hint> types:
#
#   32/float 32/int 32/float
#   32/float 32/int 32/int
#   32/float 32/float
#   32/float 32/int
#   32/float
#   32/int
#
# The script reads signature lines from stdin and emits one file for
# each of them. The base name of the file is "testcc" but can be
# overridden with the -name option. Other options:
#
# cmm-internal.pl [-width=<int>] [-little|-big] [-conv=<name>] # [-name=<name>]
#
# -width=<int>  # pointer and wordsize, default 32
# -little       # emit little endian code
# -big          # emit big endian code
# -conv=<name>  # use calling convention <name> (untested)
# -name=<name>  # base name of for output files/
#
# 
# Perl's data structures are quite weak: hashes and lists cannot be
# nested inside a list without losing their identity. Therefore I
# believe this script is not a good basis for future extensions to check
# calls between C-- and C code. 

$w          = 32;               # word and pointer size
$bo         = "little";         # endianness
$conv       = "C";              # calling convention between caller/callee
$name       = "testcc";         # base name for files

#
# A parameter list is represented by one list, like this
#
# ("int", 32, 0x12345678, "i0", "float", 32, 0xfaceface, "i2", ...     
#
# Conceptually it is a list of 4-tuples, but Perl does not offer good
# support for lists inside lists, so we have a flat representation.
#
# 1 - hint of formal parameter
# 2 - width of formal parameter
# 3 - value passed to formal parameter
# 4 - name of formal parameter
#

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
    my $i = 0 ;
    while (@_) {
        my $hint  = shift @_;
        my $width = shift @_;
        my $val   = shift @_;
        my $v     = shift @_;
        $r = $r . sprintf "\"%s\" bits%d i%d", $hint, $width, $i++;
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
        foreign "C" printf("address" success);
        return(0);  // indicate success here, too
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
        if $v != $value {foreign "C" printf("address" failed); return();} 
EOF
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
        return ();
    }
EOF
}

#
# We handle command line arguments here and emit the C-- code to stdout.
#
#
# The QC-- compiler has trouble with full 32-bit literal value.
# As a hack, the 4 most significant bits in a value are not used. 

foreach $t (@ARGV) {
       if ($t =~ /^-width=([0-9]+)$/)       { $w  = $1       }
    elsif ($t =~ /^-big$/)                  { $bo = "big"    } 
    elsif ($t =~ /^-little$/)               { $bo = "little" }
    elsif ($t =~ /^-conv=([a-zA-Z0-9]+)$/)  { $conv = $1     }
    elsif ($t =~ /^-name=(.*)$/)            { $name = $1     }             
    elsif ($t =~ /^-/) {
        print STDERR "unknown option o: $t";
        exit(1);
    }        
    else {
        print STDERR "unknown argument: $t";
        exit(1);
    }
}

#
# Loop over all signatures read from stdin ..
#

$i = 0;
while (defined($sig=<STDIN>)) {
    $f = sprintf "%s-%02d.c--", $name, $i++;
    open (OUT, ">$f") || die "cannot open $f: $!";
    
    # loop over all types in one signature and build arg list
    my @args = ();
    my @ts   = split(/ +/, $sig);
    my $n    = 0;
    foreach $t (@ts) {
        if ($t =~ /([0-9]+)\/([a-z]+)/) {
            my $hint  = $2;
            my $width = $1;
            my $msb   = 4;  ## don't use this many most significant bits
            my @v = ($hint, $width, rand_bits($width-$msb), "i$n");
            $n++;
            push @args, @v;
        } else {
            die "unknown type $t in signature $sig";
       }     
    }
    # use arg list to emit C-- code to $f.

    print OUT <<EOF;
        target byteorder $bo wordsize $w pointersize $w;
        import bits$w printf;
        export main;

        section "data" {
            align 8;
            success: bits8[] "success\\n\\0";
            align 8;
            failed:  bits8[] "failed\\n\\0";
        }
EOF
    main(@args);
    callee(@args);

    close (OUT) || die "cannot close $f: $!";
}

exit 0;
