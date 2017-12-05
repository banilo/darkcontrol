#!/usr/bin/env bash

PDFLATEX_OPTIONS="-shell-escape -interaction=nonstopmode -file-line-error"

all: clean loTopdf latex


latex: clean
        # pdfcrop -margin 5 vae.pdf vae.pdf
	pdflatex ${PDFLATEX_OPTIONS} paper
	bibtex -terse paper
	pdflatex ${PDFLATEX_OPTIONS} paper
	pdflatex ${PDFLATEX_OPTIONS} paper
	# makeglossaries paper
	pdflatex ${PDFLATEX_OPTIONS} paper
	# make clean
	rm -f *neurobiological_and_rl_overview_DMN.pdf
	rm -f *neurobiological_overview_DMN.pdf
	rm -f *table_equivalence.pdf

loTopdf:
	unoconv -f pdf *.odp


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
	rm -f *.run.xml
	rm -f *.synctex.gz
	rm -f *.log *.lot *.aux *.bbl *.blg
	rm -f *.fdb_latexmk