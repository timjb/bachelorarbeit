#!/bin/sh

set -e
pdflatex -output-directory output spektralsequenzen_serre.tex
cp output/spektralsequenzen_serre.pdf .
