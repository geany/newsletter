# sed script to modify rst2latex output
# this is used to fix a few flaws rst2latex has

# remove \setcounter...{0} to get proper section numbering
/^\\setcounter.*$/d

# put the TOC on its own page
/^\\tableofcontents/{
	n
	i \\\newpage
}
