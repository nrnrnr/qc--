#! /usr/bin/perl -w
#
# $Id$
#
# This script emits C-- code to test parameter passing between two C--
# functions.
#
# cctest [-width=<int>] [-little|-big] [-conv=<name>]  hint/<int> ...
#
# cctest emits C-- source code to stdout that tests parameter passing.
# The parameter list passed from a caller to a callee is constructed
# from the hint/<int> arguments on the command line.
# 
# Perl's data structures are quite weak: hashes and lists cannot be
# nested inside a list without losing their identity. Therefore I
# believe this script is not a good basis for future extensions to check
# calls between C-- and C code. 

$w          = 32;               # word and pointer size
$bo         = "little";         # endianness
$conv       = "C";              # calling convention between caller/callee

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
    my $n = shift @_;
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
# main emits the procedure "main" which contains the call to "callee"
#
sub main {
    my $a = actuals (@_);
    print <<"EOF";
    foreign "C" main("unsigned" bits$w iargc, "address" bits$w iargv) {
        foreign "$conv" callee$a ; 
        return();
    }
EOF
}

#
# compare emits the body of the callee that checks the values of the
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
        print
    "\tif $v != $value {foreign \"C\" printf(\"address\" failed); return();}\n";
    }        
}

#
# callee emits the procedure "callee"
#
sub callee {
    my $fml = formals(@_);
    print <<"EOF";
    foreign "$conv" callee$fml {
EOF
    compare(@_);
    print <<"EOF";
        foreign "C" printf("address" success);
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

$i = 0;
foreach $t (@ARGV) {
    if ($t =~ /([0-9]+)\/([a-z]+)/) {
        my $hint  = $2;
        my $width = $1;
        my $msb   = 4;  ## don't use this many most significant bits
        @v = ($hint, $width, rand_bits($width-$msb), "i$i");
        $i++;
        push @args, @v;
    } 
    elsif ($t =~ /^-width=([0-9]+)$/)       { $w  = $1       }
    elsif ($t =~ /^-big$/)                  { $bo = "big"    } 
    elsif ($t =~ /^-little$/)               { $bo = "little" }
    elsif ($t =~ /^-conv=([a-zA-Z0-9]+)$/)  { $conv = $1     }
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
# Emit C-- source code to stdout
#

print <<EOF;
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

#
#
#

exit 0;
