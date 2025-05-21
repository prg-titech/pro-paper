MAKEFLAGS += --silent

all : pro_paper

pro_paper :
	pdflatex main
	bibtex main
	pdflatex main

clean :
	rm -f *.pdf *.out *.aux *.bbl *.blg *.log *.toc *.lof *.bcf *.log *.lol *.run.xml *-blx.bib *.swp *.fdb_latexmk *.fls
	rm -f *.synctex.gz .main.aux.swp
	rm -f Appendices/*.aux Chapters/*.aux