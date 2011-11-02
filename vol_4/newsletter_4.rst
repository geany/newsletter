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
released. There have been a lot of changes where only the highlights
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

At 2011-10-23, about three weeks after Geany 0.21, Geany-Plugins in
its fitting version has been released. As seen in former newsletters
it has been a quite active time on plugin development so we are
trying to give you an overview on the first hand as well as digging
into bigger changes that happened.


New Plugins
^^^^^^^^^^^

Most of the new plugins have been already described in one of the
previous editions of this newsletter. However, a short overview is
needed.

* **Debugger**: A plugin to integrate debuggers like GDB. This is replacing
  GeanyGDB in many places.
* **Devhelp**: Integration for GNOME's Devhelp and google code search.
* **GeanyPG**: Encryption, decryption, signing etc. from within Geany via GnuPG.
* **GeanyMacro**: A plugin to record and apply macros.
* **GeanyNumberedBookmarks**: A plugin to store bookmarks to files and 
  access them easily via a number.
* **Tableconvert**: A plugin to convert lists into tables.
* **XMLSnippets**: Helps on inserting (common) XML-snippets.


Removed Plugins
^^^^^^^^^^^^^^^
t.b.p.s.


Update and Bugfixes
^^^^^^^^^^^^^^^^^^^

General
#######

Rework done on Autotools build system as well as some maintenance
work on Waf-build system has been done.


Addons
######

* DocList addon: Add preference to define the order of the documents
  in the list (#3204573)
* Tasks addon: Activate and update the task list when the Tasks
  addon is enabled


GeanyLaTeX
##########

* Moved LaTeX-menu to a separate menu inside Geany main menu
* Added a feature to autocapitalise letters on typing at the begin of a
  sentence
* Added a way to put an icon for \LaTeX{}-wizard into Geany's main
  toolbar
* Added a dialog for inserting BibTeX references based on available \*.bib-files
* Upgrade plugin API to version 199
* Ensure to don't insert {} after \^ and \_
* Adding a keystroke to toggle inserting {} after ^ and _
* Fix an issue with wrong inserted formatting using a keybinding
* Small update to enable i18n also on Geany >= 0.21
* Various bugfixes and memory leak fixes.


GeanySendMail
#############

* Some minor cleaning up of code
* Fix for an issue with replacing of command string when %r was not used
* Don't double free a variable which might ended up in a segmentation fault
  when using plugin function more than once.
* Small update to enable i18n also on Geany >= 0.21


Spell Check
###########

* Reduce artefacts on partially checked words
* Improve 'Check as you type' feature, making it more reliable


Updatechecker
#############

* Fix an issue with init threads for older GTK/glib versions by
  updating to Geany API version 203.
* Small update to enable i18n also on Geany >= 0.21
* Fix a typo inside Waf-build system


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

* Updated translations: de, pt, ru, tr


Geany-Plugins 0.21.1 has been released
======================================

Short after the major release Geany-Plugins 0.21 an issue with build
system has been captured which blocked installation of source
tarball using Waf-build system. This has been fixed inside a minor
source release. The Windows binary release isn't effected by this
issue.


Geany moved to Git
==================

After a long discussion on mailing list Geany finally moved to Git
as main version control system. The goal is to be more flexible on
including patchsets from non-core-developers as well as making usage
of a number of other features of Git. The new home of the Git
repository is http://github.com where you can access Geany's
sources at https://github.com/geany/geany

During this switch sources of other Geany-related resources have been
moved to GitHub as well and can be found on the overview page at
https://github.com/geany

Col(o)ur Schemes
================

Introduction
^^^^^^^^^^^^

Geany supports colour schemes which allow you to change the colours
applied to various code elements. Two colour schemes are provided with
Geany: Default and Alternate but many more are available. To change
the colour scheme, select from the menu View > Editor > Colour Schemes
> PREFERRED_COLOUR_SCHEME. The colour scheme change is immediate but
the list of available schemes is only loaded when Geany starts.

Adding Colour Schemes
^^^^^^^^^^^^^^^^^^^^^

More colour schemes are listed on the Geany Add-ons web page. For 
the individual schemes, follow the instructions given by their 
authors. One of the biggest set of schemes was created by Matthew
Brush (known as codebrainz in Geany's IRC channel). Matthew's 
collection is listed on the add-ons page but is hosted at 
https://github.com/codebrainz/geany-themes 
Follow the installation instructions given on the page, then restart 
Geany and all schemes will then be listed in the Colour Schemes menu.

How Colour Schemes Work
^^^^^^^^^^^^^^^^^^^^^^^

Geany's colour schemes' format has changed over time so there's a
"legacy" format and the current, preferred format. Schemes in the
different formats can be mixed but the current format is easier to
maintain and modify.

Legacy colour scheme format features a section named "[named_styles]".

Current colour scheme format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The current colour scheme format works by first defining the colours 
to be applied to a file type's elements. This is an extract from a 
colour scheme named "Oblivion2"::

    default=0xffffff;0x2e3436;false;false
    tag=0x729fcf;0x2e3436;true;false
    tag_unknown=0xffffff;0x8C0101;true;false

File types and their elements are defined in a file named 
filetypes.<FILETYPE>: e.g. filetypes.xml, filetypes.html. All 
filetype files are stored in the 'filedef' directory in Geany's 
personal data directory. This is an extract from the file type file 
for HTML::

    [styling]
    # Edit these in the colorscheme .conf file instead
    html_default=default
    html_tag=tag
    html_tagunknown=tag_unknown

When Geany apply syntax highlighting to a file which matches a filetype,
it matches the element (defined in the filetype's file) with the
matching colour (defined in the colour scheme's file). The advantage of
this scheme over the legacy version is that modifying a colour scheme
requires changes to just one file.

Legacy colour scheme format
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The legacy colour scheme format works slightly differently to the 
new colour scheme format. The colours to be applied to a matching
filetype are defined in the filetype's definition file itself. This is
an extract of a

The problem with this scheme format is that if you want to make a 
change which applies to all filetypes, you need to change *all*
filetypes. If for example you have 40 file types defined and you want
to change the background colour which applies to all of them, you
need to change the background colour's value in all 40 files.

Colour scheme formats compared
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The new colour scheme format is simply much easier to manage and 
maintain, when compared with the old format. Another advantage to 
the new scheme is that it makes the task of porting colour schemes 
from other applications easier. Matthew Brush (AKA Codebrainz), a 
Geany contributor, has ported a wide range of colour schemes from 
other editors and they're all available from . Other colour 
schemes, mainly in the legacy scheme format, are also available from 
http://www.geany.org/Download/Extras.

Colour schemes are defined in files named <COLOUR_SCHEME>.conf and 
are stored in the 'colourschemes' directory in Geany's personal data 
directory.

HINT: Use Geany's own colour picker when modifying an existing colour
scheme.


Change of leadership
====================

If you have been using Geany for a while and read the announcement of
Geany 0.21's release, you might have noticed something important. 
The leadership of the Geany project has changed from Enrico Tröger to 
Colomban Wendling, a current member of the development team. 
Enrico's priorities had changed so he decided it would be best if 
someone else took on the leadership role. During Enrico's time as 
leader, Geany has continued to gained in popularity and improve, 
while staying true to its original design goals. Thankyou to Enrico 
for all that you have done and we welcome Colomban.


Plugin Focus
============

Split Window
^^^^^^^^^^^^

The Split Window plugin provides a feature which is so useful you'll 
never want to be without it. When enabled, choose Tools > Split 
Window > Side by side | Top and bottom from the main menu and the 
active window is split into two editing panes. Each pane can be 
navigated independently of the other, complete with its own 
scrollbar. When you want to return to "normal" view, choose Tools > 
Split Window > Unsplit from the main menu.

When editing a file it's often necessary to navigate from one section
to another, usually because of a reference between them.


About this newsletter
=====================

This newsletter has been created in cooperation by people from
Geany's international community. Contributors to this newsletter and
the infrastructure behind it, ordered by alphabet:

Frank Lanitz,
Russell Dickenson
