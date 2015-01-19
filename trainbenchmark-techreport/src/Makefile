DOCUMENT=main

pdflatex:
	mkdir -p ../pdf
	pdflatex $(DOCUMENT)
	bibtex $(DOCUMENT)
	pdflatex $(DOCUMENT)
	pdflatex $(DOCUMENT)
	mv $(DOCUMENT).pdf ../pdf

xelatex:
	mkdir -p ../pdf
	xelatex $(DOCUMENT)
	bibtex $(DOCUMENT)
	xelatex $(DOCUMENT)
	xelatex $(DOCUMENT)
	mv $(DOCUMENT).pdf ../pdf

clean:
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg
