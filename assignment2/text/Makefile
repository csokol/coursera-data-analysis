# 
# makefile para a compilação do documento
#
# Sáb Jun 23 21:13:37 BRT 2007
#

BASE_NAME = paper

LATEX     = latex
PDFLATEX  = pdflatex
BIBTEX    = bibtex
MAKEINDEX = makeindex

pdf: $(BASE_NAME).pdf
ps: $(BASE_NAME).ps

$(BASE_NAME).pdf: $(BASE_NAME).tex  pygments
	$(PDFLATEX) $<
	$(PDFLATEX) $<
	$(PDFLATEX) $<
	
$(BASE_NAME).ps: $(BASE_NAME).tex 
	$(LATEX) $<
	
clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.pdf $(BASE_NAME)*.out \
		  $(BASE_NAME)*.lof $(BASE_NAME)*.lot 


pygments:
	pygmentize -l text -f latex ../analysis.R > misc/script.tex
