#! /usr/bin/perl -w
#
# This filter works with the internal noweb(1) representation and marks
# definitions of symbols in ocaml(1) source code.  

$code = 0;

while (defined($line = <>)) {
    
    print $line;
    
    $code       = ($line =~ /^\@begin code/) ? 1 : $code;
    $code       = ($line =~ /^\@end code/)   ? 0 : $code;
    
    # make sure we only index code we know how to deal with
    if ($code) {
        if ($line =~ /^\@text (function)\s+([^\(]+)/) {
            $id    = $2;
            printf "\@index defn %s\n", $id;
            next ;
        }
    }
}

