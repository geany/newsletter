Geany Newsletter #4
-------------------

.. contents::

About Geany
===========

Geany is a small and lightweight Integrated Development Environment.
It was developed to provide a small and fast IDE, which has only a
few dependencies from other packages. Another goal was to be as
independent as possible from a special Desktop Environment like KDE
or GNOME - Geany only requires the GTK2 runtime libraries.

More information about Geany can be found at
`geany.org <http://www.geany.org/>`_.


Geany 0.21 has been released
============================

After about 6 month of developing, at 2011-10-02 Geany 0.21 has been
released. There have been a lot of changes where only the highights
are listed below:

 * Add support for real-time symbol parsing.
 * Fix loading of non-UTF-8 templates.
 * Update Scintilla to version 2.25.
 * Add Scala custom filetype (werg).
 * Add Cython custom filetype (Matthew Brush).
 * Add support for separate single and multiline comments.
 * Add support for filetype-specific indentation settings.
 * Add filetype Cobol (Seth Keiper).
 * SplitWindow plugin now works on Windows too.
 * Add translations: fa.
 * Update translations: ca, cs, de, en_GB, es, fi, fr, gl, it, ja, nl,
   pt, pt_BR, sl, sv, tr, vi, zh_CN, zh_TW.

A more complete list can be found on
http://www.geany.org/Documentation/ReleaseNotes

Source tarballs as well as Windows binaries can be found as always on
http://download.geany.org.


Geany-Plugins 0.21 has been released
====================================

At 2011-10-23, about three weks after Geany 0.21, Geany-Plugiins in
its fitting version has been released. As seen in former newsletters
it has been a quiet active time on plugin development so we are
trying to give you an overview on the first hand as well as digging
into bigger changes have been done.


New Plugins
^^^^^^^^^^^

Most of the new plugins have been already described in one of the
previous editions of this newsletter. However, a short overview is
needed.

* **Debugger**: A plugin to integrate debugger like GDB. This is replacing geanyGDB.
* **Devhelp**: Integration for GNOME's Devhelp and google code search.
* **GeanyPG**: Encryption, decryption, signing etc. from within Geany via GnuPG.
* **GeanyMacro**: A plugin to record and apply macros.
* **GeanyNumberedBookmarks**: A plugin to store bookmarks to files and access them easily via a number.
* **Tableconvert**: A plugin to convert lists into tables.
* **XMLSnippets**: Helps on inserting (common) XML-snippets.

Removed Plugins
^^^^^^^^^^^^^^^
t.b.p.s.

Update and Bugfixes
^^^^^^^^^^^^^^^^^^^

Generell
########

Rework done on autootls build system as well as some maintenance
work on waf-build system has been done.

Addons
######

* DocList addon: Add preference to define the order of the documents
  in the list (#3204573)
* Tasks addon: Activate and update the task list when the Tasks
  addon is enabled

GeanyLaTeX
##########

* Moved LaTeX-menu to a separate menu inside Geany main menu
* Added a feature to autocapetlise letters on typing on begin of a
  sentence
* Added a way to put a icon for \LaTeX{}-wizard into Geany's main
  toolbar
* Added a dialog for inserting BibTeX references based on available \*.bib-files
* Upgrade plugin API to version 199
* Ensure to don't insert {} after \^ and \_
* Adding a keystroke to toggle inserting {} after ^ and _
* Fix an issue with wrong inserted formating using a keybinding
* Small update to enable i18n also on Geany >= 0.21
* Various bugfixes and memory leak fixes.

GeanySendMail
#############

* Some minore cleaning up of code
* Fix for an issue with replacing of command string in case of %r has not being used
* Don't double free a variable which might ended up inside a segmentation fault when using plugin function more than once.
* Small update to enable i18n also on Geany >= 0.21

Spell Check
###########

* Reduce artifacts on partially checked words
* Improve 'Check as you type' feature, make it more reliably

Updatechecker
#############

* Fix an issue with init threads for older GTK/glib versions by
  updating to Geany API version 203.
* Small update to enable i18n also on Geany >= 0.21
* Fix a typo inside waf-build system

WebHelper
#########

* Fix creation of configuration directory in some cases.
* Fix missing update of navigation buttons on anchor links.
* Fix thread initialization problem.
* Fix some issues with keybingins on secondary windows.
* Add a keybinding to show/hide web view's window (bug #3156262).
* Allow for better configuration of secondary windows.

Internationalisation
####################

* Update translations: de, pt, ru, tr



About this newsletter
=====================

This newsletter has been created in cooperation by people from
Geany's international community. Contributors to this newsletter and
the infrastructure behind it, ordered by alphabet:

Frank Lanitz,
Russell Dickenson
