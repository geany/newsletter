# sed script to modify rst2latex output
# this is used to fix a few flaws rst2latex has

# remove \setcounter...{0} to get proper section numbering
/^\\setcounter.*$/d

# put the TOC on its own page
/^\\tableofcontents/{
	n
	i \\\newpage
}

# center images and reduce them to something moderated fitting the page
# also force an empty line before: fixes placement after \paragraph and with previous text
s/(.*\\includegraphics)(.*)/~\\\\\\centerline{\1[width=\\textwidth,height=0.30\\textheight,keepaspectratio=true]\2}/
