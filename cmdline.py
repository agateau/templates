#!/usr/bin/env python3
"""
Doc
"""
import argparse
import sys


def main():
    parser = argparse.ArgumentParser()
    parser.description = __doc__

    parser.add_argument("-f", "--file", dest="filename",
                        help="write report to FILE", metavar="FILE")

    parser.add_argument("-n", "--dry-run", action="store_true",
                        help="Simulate")

    parser.add_argument("-v", "--verbose", action="count",
                        help="Be more verbose")

    parser.add_argument("mandatory_arg")
    parser.add_argument("optional_arg", nargs="?")

    args = parser.parse_args()

    print("dry_run", args.dry_run)
    print("filename:", args.filename)
    print("verbose:", args.verbose)
    print("mandatory_arg:", args.mandatory_arg)
    print("optional_arg:", args.optional_arg)

    return 0


if __name__ == "__main__":
    sys.exit(main())
# vi: ts=4 sw=4 et
