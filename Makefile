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

.rst.pdf:
	rst2pdf $< -o $@

.rst.tex:
	rst2latex $< > $@

.rst.odt:
	rst2odt $< > $@

# extra dependencies we cannot add to suffix rules
$(OUTPUT_HTML): style.css
