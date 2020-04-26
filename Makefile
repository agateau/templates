# This does not *build* anything in this directory, it is a Makefile template

# Shell to use, stop on errors, stop on undefined variables, report errors
# if a command in a pipe fails (not just the last)
SHELL := bash
.SHELLFLAGS := -euo pipefail -c

# Do not start a new shell for each command of a target
# Makes it possible to have `cd foo` on its own line. Be sure to configure the
# shell to stop on errors though (the -e in .SHELLFLAGS)
.ONESHELL:

# Delete target if it has been created but the command failed
# Useful when the target is created with a redirection like this:
#
#   foogen > foo
#
# Even if foogen fails, foo has already been created, it's an empty file
.DELETE_ON_ERROR:

MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# Cheatsheet
# $@ = target
# $(@D) = directory of $@
# $^ = all prerequisites
# $? = all prerequisites newer than target
# $< = first prerequisite

