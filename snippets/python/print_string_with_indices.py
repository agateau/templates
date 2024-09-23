import click
import sys


CH_WIDTH = 3


def print_with_indices(content):
    index = 0
    for line_index, line in enumerate(content.splitlines(), start=1):
        click.secho(f"{line_index:2}: ", nl=False)
        click.echo("".join(f"{x:{CH_WIDTH}}" for x in line), nl=False)
        click.secho("$" + " " * (CH_WIDTH - 1), color=True, fg="red")

        click.echo("    ", nl=False)
        for _ in range(len(line) + 1):
            click.secho(f"{index:<{CH_WIDTH}}", nl=False, color=True, fg="blue")
            index += 1
        click.secho()


if __name__ == "__main__":
    print_with_indices(sys.stdin.read())
