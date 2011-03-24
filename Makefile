all: html pdf latex odt

html:
	rst2html vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).html

pdf:
	rst2pdf vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).pdf

latex:
	rst2latex vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).tex

odt:
	rst2odt vol_$(VOL)/newsletter_$(VOL).rst > vol_$(VOL)/newsletter_$(VOL).odt
