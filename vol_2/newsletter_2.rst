Geany Newsletter #2
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


Geany Development
=================


Update to Scintilla 2.25
^^^^^^^^^^^^^^^^^^^^^^^^

With svn r5682 another update on used Scintilla has been done so
Geany's development version is now powered by Scintilla 2.25 in
favor of the previous used 2.22.

As with every update of Scintilla there have been a lot of
improvements. This is including changes on Scintilla itself as e.g.
fixing an issue with marking of a word when double clicking or
fixing some memory leaks and unneeded redraws of editor window as
well on used lexer e.g. for SQL.

A detailed list of changes done with Scintilla can be found at
`Scintilla ChangeLog
<http://www.scintilla.org/ScintillaHistory.html>`_.

Real-time tag parsing
^^^^^^^^^^^^^^^^^^^^^

Parsing of the symbols (also known as tags) in file currently being
edited can now be done directly in memory. This change allowed to make
tag parsing for the current document happen in real time when the content
changes; so keeping the symbol list reflecting the actual content of the
document rather than the state when it was last saved.

This can be configured (and disabled) in the preferences by the
`Symbol list update frequency` option under `Editor -> Completions`.

Automatic indentation width detection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Geany now has the ability to detect the indentation width used by a
file when opening it, making it easier to work with files which use
different indentation widths. The auto-detection, however, doesn't yet
work if the file uses a tabs-only indentation type.

To enable automatic detection of indentation width, open the Preferences
dialog and check `Detect width from file` in the `Editor->Indentation`
section.

Fixes at template encoding
^^^^^^^^^^^^^^^^^^^^^^^^^^

The encoding of template files is now properly auto-detected, fixing
loading of any template using an encoding incompatible with UTF-8.


Plugins
=======

New plugins
^^^^^^^^^^^

geanycfp
********



Significant updates on Split Window Plugin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There has been quite a few improvements and bug fixes done in the Split
Window plugin that ships with Geany which allows viewing two documents at the
same time.

Code folding is now supported in the split editor as of revision 5626.

Since revision 5633, the terminology used in the Split Window menu under the
Tools menu has been improved to avoid ambiguity regarding the direction in
which the split will take place.  Rather than using the word Horizontal for
when the editors are laid out horizontally (the splitter is vertical), the
words "Side by Side" are now used.  Likewise, when the editors are laid out
vertically (the splitter is horizontal), the words "Top and Bottom" are now
used.

Previously, when the Split Window was active and the document currently being
viewed in it was closed in the main documents notebook, the Split Window
plugin would unsplit, even if there was other documents which could be viewed
instead.  As of revision 5634, when this happens, the Split Window plugin will
switch to view the current document in the main documents notebook instead.  If
there are no more docouments open, the Split Window plugin will unsplit.

Probably the most significant improvement to the Split Window plugin is that
it will now work in Microsoft Windows.  Previously, the plugin was using trick
to work around a bug in the Scintilla widget Geany uses for its editor.  A
side effect of this workaround was that it caused serious issues in Windows and
so the plugin was disabled for the Windows build.  We fixed the bug in
Scintilla and sent the fix to the Scintilla project where it was merged
upstream.  Geany is no longer required to use the previously mentioned trick,
and so the plugin will be re-enabled for the Windows build, with equivalent
functionality as it has on other platforms.


Geany Universe
==============

New Geany Wiki
^^^^^^^^^^^^^^


People behind Geany -- Interview
=================================


Geany local
===========


Geany at Chemnitzer LinuxTage (March, 19th-20th)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Together with the guys of Xfce Geany was present with a booth on
annual Chemnitzer LinuxTage in March, a convention about all topics
around Linux, BSD and free software in general. The booth was well
visited and people came not only to ask questions or report a bug
but also to tell what they are using Geany for. So Dominic, Enrico
and Frank had a lot of questions to answer and a lot of feedback to
take care about.
