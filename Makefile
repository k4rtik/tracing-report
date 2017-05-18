SRC = report

all: $(SRC).pdf

pdf:
	pdflatex $(SRC).tex

$(SRC).pdf: *.tex references.bib
	pdflatex $(SRC).tex
	bibtex $(SRC).aux
	pdflatex $(SRC).tex
	pdflatex $(SRC).tex

clean:
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 ${SRC}.pdf *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.brf *.run.xml
