pandoc README.md -o report.pdf --pdf-engine=pdflatex -V geometry:margin=1in -V fontsize=11pt --toc --toc-depth=2

pandoc README.md -o report.pdf --pdf-engine=pdflatex -V geometry:margin=1in -V fontsize=10pt --toc --toc-depth=2 -V documentclass=article -V classoption=twocolumn

