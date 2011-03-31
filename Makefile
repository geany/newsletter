all: html pdf latex odt

html:
	rst2html --stylesheet=style.css \
		vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).html

pdf:
	rst2pdf vol_$(VOL)/newsletter_$(VOL).rst -o vol_$(VOL)/newsletter_$(VOL).pdf

latex:
	rst2latex vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).tex

odt:
	rst2odt vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).odt

clean:
	rm -f vol_$(VOL)/newsletter_$(VOL).html
	rm -f vol_$(VOL)/newsletter_$(VOL).pdf
	rm -f vol_$(VOL)/newsletter_$(VOL).odt
	rm -f vol_$(VOL)/newsletter_$(VOL).tex