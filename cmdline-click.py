#!/usr/bin/env python3
import sys

import click

from click import echo


CONTEXT_SETTINGS = dict(help_option_names=["-h", "--help"])


@click.command(context_settings=CONTEXT_SETTINGS)
@click.option("-o", "--output-dir", default=".", type=click.Path())
@click.option("-v", "--verbose", is_flag=True)
def main(output_dir, verbose):
    echo("Foo")
    echo(f"output_dir={output_dir}")
    echo(f"verbose={verbose}")


if __name__ == "__main__":
    main()
# vi: ts=4 sw=4 et
