#!/bin/sh
set -e

PROGNAME=$(basename $0)

die () {
    echo "$PROGNAME: ERROR: $*" | fold -s -w "${COLUMNS:-80}" >&2
    exit 1
}


usage () {
    if [ "$*" != "" ] ; then
        echo "ERROR: $*"
    fi
    
    cat << EOF
Usage: $PROGNAME [OPTION ...]
  ...program description...
Options:
  -h, --help          display this usage message and exit
EOF

    exit 1
}


# getopt "magic"
TEMP=$(getopt -o hab:c:: --long help,a-long,b-long:,c-long:: \
     -n $PROGNAME -- "$@")

[ $? = 0 ] || die "Terminating..."

# Note the quotes around `$TEMP': they are essential!
eval set -- "$TEMP"

while true ; do
    case "$1" in
    -h|--help)
        usage
        ;;
    -a|--a-long)
        echo "Option a"
        shift
        ;;
    -b|--b-long)
        echo "Option b, argument \`$2'"
        shift 2
        ;;
    -c|--c-long) 
        # c has an optional argument. As we are in quoted mode,
        # an empty parameter will be generated if its optional
        # argument is not found.
        case "$2" in
        "")
            echo "Option c, no argument"
            shift 2
            ;;
        *)
            echo "Option c, argument \`$2'"
            shift 2
            ;;
        esac
        ;;
    --)
        shift
        break
        ;;
    *)
        die "Internal error!"
        ;;
    esac
done

# Remaining arguments are in $*
# vim:set ts=4 sw=4 et:
