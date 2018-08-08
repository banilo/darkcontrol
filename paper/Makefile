#!/usr/bin/env bash

PDFLATEX_OPTIONS="-shell-escape -interaction=nonstopmode -file-line-error"

all: clean latex clean


latex:
  # pdfcrop -margin 5 vae.pdf vae.pdf
	pdflatex ${PDFLATEX_OPTIONS} paper
	bibtex -terse paper
	pdflatex ${PDFLATEX_OPTIONS} paper
	pdflatex ${PDFLATEX_OPTIONS} paper
	# makeglossaries paper
	pdflatex ${PDFLATEX_OPTIONS} paper

# loTopdf:
# 	soffice --headless --convert-to pdf  *.odp


clean:
	rm -f *.aux
	rm -f *.bcf
	rm -f *.bbl
	rm -f *.blg
	rm -f *.ist
	rm -f *.alg
	rm -f *.acr
	rm -f *.acn
	rm -f *.glsdefs
	rm -f *.out
	rm -f *.lot
	rm -f *.log
	rm -f *.lof
	rm -f *.toc
	rm -f *.fls
	rm -f *.run.xml
	rm -f *.synctex.gz
	rm -f *.log *.lot *.aux *.bbl *.blg
	rm -f *.fdb_latexmk