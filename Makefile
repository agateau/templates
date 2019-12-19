# This does not *build* anything in this directory, it is a Makefile template

SHELL := bash
.SHELLFLAGS := -euo pipefail -c
.ONESHELL:
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# Cheatsheet
# $@ = target
# $(@D) = directory of $@
# $^ = all prerequisites
# $? = all prerequisites newer than target
# $< = first prerequisite

