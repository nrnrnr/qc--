#! /bin/sh
# This script prints the a list of file names to stdout that should go
# into a source or binary distribution. Patterns are used to decide
# whether a file goes into a distribution. 
#

this="dist.sh"

if [ $# -ne 1 ]; then
    cat <<EOF
    usage: $this -src|-bin
EOF
    exit 1
fi

case "$1" in
    -src)
                find .                          \
                        \( -path './man'        \
                        -o -path './bin'        \
                        -o -path './lib'        \
                        \) -print               \
                        -o                      \
                        \( -type d              \
                        -o -type l              \
                        \) -true                \
                        -o                      \
                        \( -path '/CVS/*'       \
                        -o -path './lib/*'      \
                        -o -path './man/man*/*' \
                        -o -path './bin/*'      \
                                                \
                        -o -name '*.a'          \
                        -o -name '*.opt'        \
                        -o -name '*.o'          \
                        -o -name '*.cmi'        \
                        -o -name '*.cmo'        \
                        -o -name '*.cma'        \
                        -o -name '*.cmxa'       \
                        -o -name '*.cmx'        \
                        -o -name '*.tar*'       \
                        -o -name '*.tmp*'       \
                        -o -name '*.sig'        \
                        -o -name '*.output'     \
                        -o -name 'config.*'     \
                        -o -name 'pod2html-*'   \
                        \) -prune               \
                        -o -print               \
                        | sort
        ;;
    
    -bin)
		find .  -follow			                \
                        \( -path './man'                        \
                        -o -path './bin'                        \
                        \) -print                               \
                        | sort
        ;;
    
    *)
        echo "unknown flag $1" 1>&2
        exit 1
        ;;
esac
