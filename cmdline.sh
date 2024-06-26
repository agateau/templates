#!/usr/bin/env bash
set -euo pipefail

PROGNAME=$(basename "$0")
SCRIPT_DIR=$(cd "$(dirname "$(readlink -e "$0")")" ; pwd)

die() {
    echo "$PROGNAME: $*" >&2
    exit 1
}

usage() {
    if [ "$*" != "" ] ; then
        echo "Error: $*" >&2
        echo >&2
    fi

    cat << EOF
Usage: $PROGNAME [OPTION ...] [foo] [bar]
<Program description>.

Options:
  -h, --help          display this usage message and exit
  -d, --delete        delete things
  -o, --output [FILE] write output to file
EOF

    exit 1
}

foo=""
bar=""
delete=0
output="-"
while [ $# -gt 0 ] ; do
    case "$1" in
    -h|--help)
        usage
        ;;
    -d|--delete)
        delete=1
        ;;
    -o|--output)
        output="$2"
        shift
        ;;
    -*)
        usage "Unknown option '$1'"
        ;;
    *)
        if [ -z "$foo" ] ; then
            foo="$1"
        elif [ -z "$bar" ] ; then
            bar="$1"
        else
            usage "Too many arguments"
        fi
        ;;
    esac
    shift
done

if [ -z "$bar" ] ; then
    usage "Not enough arguments"
fi

cat <<EOF
foo=$foo
bar=$bar
delete=$delete
output=$output
EOF
