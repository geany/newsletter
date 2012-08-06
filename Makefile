#!/usr/bin/make -f

VOL			?= 6

NAME		=	vol_$(VOL)/newsletter_$(VOL)
OUTPUT_HTML	=	$(NAME).html
OUTPUT_PDF	=	$(NAME).pdf
OUTPUT_ODT	=	$(NAME).odt
OUTPUT_TEX	=	$(NAME).tex
OUTPUTS		=	$(OUTPUT_HTML) \
				$(OUTPUT_PDF) \
				$(OUTPUT_ODT) \
				$(OUTPUT_TEX)

PDFLATEX_FLAGS	= -interaction batchmode
RST2LATEX_FLAGS	= --template=template.tex \
				  --no-section-numbering

.PHONY: all clean html pdf odt tex

.SUFFIXES: .rst .html .pdf .tex .odt

all: $(OUTPUTS)

# convenience aliases
html:	$(OUTPUT_HTML)
pdf:	$(OUTPUT_PDF)
odt:	$(OUTPUT_ODT)
tex:	$(OUTPUT_TEX)

clean:
	rm -f $(OUTPUTS)

.rst.html:
	rst2html --stylesheet=stylesheets/mainstyle.css --toc-top-backlinks $< > $@

.tex.pdf:
	maxpasses=5; \
	file=`basename $< .tex`; \
	cd `dirname $<` || exit 1; \
	pdflatex $(PDFLATEX_FLAGS) "$$file.tex" >/dev/null || exit 2; \
	while test $$maxpasses -gt 0 && grep -q -i 'rerun' $$file.log; do \
		pdflatex $(PDFLATEX_FLAGS) "$$file.tex" >/dev/null || exit 3; \
		maxpasses=`expr $$maxpasses - 1`; \
	done; \
	rm -f "$$file.log" "$$file.toc" "$$file.out" "$$file.aux"

.rst.tex:
	rst2latex $(RST2LATEX_FLAGS) $< > $@ || rm -f $@
	sed -r -f rst2latex.sed -i $@ || rm -f $@

.rst.odt:
	rst2odt $< > $@

# extra dependencies we cannot add to suffix rules
$(OUTPUT_HTML): stylesheets/mainstyle.css
$(OUTPUT_TEX): template.tex rst2latex.sed
