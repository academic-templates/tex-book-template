pdflatex -synctex=1 -interaction=nonstopmode %.tex|makeindex %.idx -s styles/index.ist|bibtex %.aux|makeglossaries %|pdflatex -synctex=1 -interaction=nonstopmode %.tex|pdflatex -synctex=1 -interaction=nonstopmode %.tex
