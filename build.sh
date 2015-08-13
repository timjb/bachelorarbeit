#!/bin/sh

set -e

# siehe auch http://tex.stackexchange.com/a/12717
if [ ! -f output/spektralsequenzen_serre.aux ]; then
  pdflatex -output-directory output spektralsequenzen_serre.tex
fi
mkdir -p output
cp literatur.bib output
cd output; bibtex spektralsequenzen_serre; cd ..
pdflatex -output-directory output spektralsequenzen_serre.tex
cp output/spektralsequenzen_serre.pdf .
