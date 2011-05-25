#!/usr/bin/make -f

# build the current volume if none provided
# This is only working for newsletter since issue 2 as issue 1 has
# been created in a different way.

VOL			?= 2

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
				  --latex-preamble='% avoids weird fonts' \
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
	rst2html --stylesheet=style.css --toc-top-backlinks $< > $@

.tex.pdf:
	maxpasses=5; \
	file=`basename $< .tex`; \
	cd `dirname $<` || exit 1; \
	pdflatex $(PDFLATEX_FLAGS) "$$file.tex" >/dev/null || exit 1; \
	while test $$maxpasses -gt 0 && grep -q -i 'rerun' $$file.log; do \
		pdflatex $(PDFLATEX_FLAGS) "$$file.tex" >/dev/null || exit 1; \
		maxpasses=`expr $$maxpasses - 1`; \
	done; \
	rm -f "$$file.log" "$$file.toc" "$$file.out" "$$file.aux"

.rst.tex:
	rst2latex $(RST2LATEX_FLAGS) $< > $@ || rm -f $@
	sed -f rst2latex.sed -i $@ || rm -f $@

.rst.odt:
	rst2odt $< > $@

# extra dependencies we cannot add to suffix rules
$(OUTPUT_HTML): style.css
$(OUTPUT_TEX): template.tex rst2latex.sed
