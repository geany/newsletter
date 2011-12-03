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
# we honor any option the input may have for \includegraphics, appending them
# to our default options set
/^\\includegraphics/{
	# uncomment if we want to handle \includegraphics anywhere in a line
	## print anything before \\includegraphics, we will get rid of it below
	#h
	#s/^(.*)\\includegraphics.*$/\1/p
	#g

	i \\\\begin{center}
	i \\\\begin{minipage}[c]{\\linewidth}
	i \\\\begin{center}

	# remove \\includegraphics from pattern space
	s/.*\\includegraphics(.*)/\1/
	h

	# include \\includegraphics and start of the options
	i \\\\includegraphics[width=\\textwidth,height=0.25\\textheight,keepaspectratio=true

	# hack: jump to reset t/T state
	t reset-hack
	:reset-hack

	# paste possible input options with a preceding comma
	s/^\[(.*)\].*/\1/
	T opts-end
	i ,
	p

	# terminate the options
	:opts-end
	i ]

	# and paste the body
	g
	s/^(\[.*\])?(.*$)/\2/p

	i \\\\end{center}
	i \\\\end{minipage}
	i \\\\end{center}

	# empty pattern space
	d
}
