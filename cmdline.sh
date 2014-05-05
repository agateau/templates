#!/bin/sh
set -e

PROGNAME=$(basename $0)

die() {
    echo "$PROGNAME: ERROR: $*" | fold -s -w "${COLUMNS:-80}" >&2
    exit 1
}


usage() {
    if [ "$*" != "" ] ; then
        echo "ERROR: $*"
    fi

    cat << EOF
Usage: $PROGNAME [OPTION ...] <framework-name> <language>
  ...program description...
Options:
  -h, --help          display this usage message and exit
EOF

    exit 1
}

fw_name=""
lang=""
while [ $# -gt 0 ] ; do
    case "$1" in
    -h|--help)
        usage
        ;;
    -*)
        usage "Unknown option '$1'"
        ;;
    *)
        if [ -z "$fw_name" ] ; then
            fw_name="$1"
        elif [ -z "$lang" ] ; then
            lang="$1"
        else
            usage "Too many arguments"
        fi
        ;;
    esac
    shift
done

if [ -z "$lang" ] ; then
    usage "Not enough arguments"
fi

# Remaining arguments are in $*
# vim:set ts=4 sw=4 et:
