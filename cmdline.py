#!/usr/bin/env python
# encoding: utf-8
import sys
from optparse import OptionParser

USAGE = "%prog <arg1> <arg2>..."

def main():
    parser = OptionParser(usage=USAGE)

    # Add an option which takes an argument and is stored in options.filename.
    # 'metavar' is an example of argument and should match the text in 'help'.
    parser.add_option("-f", "--file", dest="filename",
                      help="write report to FILE", metavar="FILE")

    # Add a boolean option stored in options.verbose.
    parser.add_option("-x", "--xyz",
                      action="store_true", dest="xyz", default=True,
                      help="use 'xyz' method")

    # Add an invert boolean option stored in options.verbose.
    parser.add_option("-q", "--quiet",
                      action="store_false", dest="verbose", default=True,
                      help="don't print status messages to stdout")

    (options, args) = parser.parse_args()

    print "filename:", options.filename
    print "verbose:", options.verbose
    print "args:", args

    if len(args) == 0:
        parser.error("Missing args")

    return 0


if __name__ == "__main__":
    sys.exit(main())
# vi: ts=4 sw=4 et
