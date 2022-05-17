#!/bin/bash

# run
#   pipenv shell
# before invoking this script

make html
make LATEXOPTS=' -interaction=batchmode ' latexpdf
make epub
