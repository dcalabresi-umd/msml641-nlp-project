#!/bin/bash

# Compile the ACL paper
# This script runs pdflatex, bibtex, and pdflatex twice more to properly generate citations

echo "Cleaning old files..."
rm -f paper.aux paper.bbl paper.blg paper.log paper.out

echo "First pdflatex pass..."
pdflatex -interaction=nonstopmode paper.tex > /dev/null

echo "Running bibtex..."
bibtex paper 2>&1 | grep -v "Illegal"

echo "Second pdflatex pass..."
pdflatex -interaction=nonstopmode paper.tex > /dev/null

echo "Third pdflatex pass..."
pdflatex -interaction=nonstopmode paper.tex

echo ""
echo "Done! Check paper.pdf"
ls -lh paper.pdf

# Clean up auxiliary files (optional)
# Uncomment the following lines if you want to remove auxiliary files
# echo "Cleaning auxiliary files..."
# rm -f paper.aux paper.bbl paper.blg paper.log paper.out
