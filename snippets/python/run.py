import shlex
import subprocess
import sys

from typing import Mapping


def err(msg: str) -> None:
    print(msg, file=sys.stderr)
    sys.stderr.flush()


def run(
    cmd: list[str], cwd: str | None = None, env: Mapping[str, str] | None = None
) -> bool:
    cmd_str = " ".join(shlex.quote(x) for x in cmd)
    err(f"Running {cmd_str}")
    proc = subprocess.run(
        cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, env=env
    )
    if proc.returncode != 0:
        err(f"FAIL with exit code {proc.returncode}")
        err(proc.stdout)
        return False
    err("OK")
    return True
