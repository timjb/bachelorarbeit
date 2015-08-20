#!/bin/sh

set -e

mkdir -p output
# siehe auch http://tex.stackexchange.com/a/12717
if [ ! -f output/homotopiegruppen_serre.aux ]; then
  pdflatex -output-directory output homotopiegruppen_serre.tex
fi
cp literatur.bib output
cd output; bibtex homotopiegruppen_serre; cd ..
pdflatex -output-directory output homotopiegruppen_serre.tex
cp output/homotopiegruppen_serre.pdf .
