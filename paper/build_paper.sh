#!/usr/bin/env bash

# rm -rf $(biber --cache)
rm *.aux
rm *.bcf
rm *.bbl
rm *.blg
rm *.ist
rm *.alg
rm *.acr
rm *.acn
rm *.glsdefs
rm *.out
rm *.lot
rm *.log
rm *.lof
rm *.toc
rm *.run.xml
rm *.synctex.gz

pdflatex paper
bibtex paper
pdflatex paper
pdflatex paper
makeglossaries paper
pdflatex paper
