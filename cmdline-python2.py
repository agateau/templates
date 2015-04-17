#!/usr/bin/env python
# encoding: utf-8

# Python 2/3 compatibility
from __future__ import division, absolute_import, print_function, unicode_literals

import argparse
import sys


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('-f', '--file', dest='filename',
        help='write report to FILE', metavar='FILE')

    parser.add_argument('-n', '--dry-run', action='store_true',
        help='Simulate')

    parser.add_argument('-v', '--verbose', action='count',
        help='Be more verbose')

    parser.add_argument('mandatory_arg')
    parser.add_argument('optional_arg', nargs='?')

    args = parser.parse_args()

    print('filename:', args.filename)
    print('verbose:', args.verbose)
    print('mandatory_arg:', args.mandatory_arg)
    print('optional_arg:', args.optional_arg)

    return 0


if __name__ == '__main__':
    sys.exit(main())
# vi: ts=4 sw=4 et
