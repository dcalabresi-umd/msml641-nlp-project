#!/bin/bash

rm -f paper.aux paper.bbl paper.blg paper.log paper.out

pdflatex -interaction=nonstopmode paper.tex > /dev/null

bibtex paper 2>&1 | grep -v "Illegal"

pdflatex -interaction=nonstopmode paper.tex > /dev/null

pdflatex -interaction=nonstopmode paper.tex

ls -lh paper.pdf
