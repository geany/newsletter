Geany Newsletter #2
-------------------


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

Geany now have the ability to detect the indentation width used by a
file when opening it, making easier to work with files using different
indentation widths. However, this auto-detection don't work (yet) if the
file uses a tabs-only indentation type.

To enable this auto-detection, go to the preferences under `Editor ->
Indentation` and check `Detect width from file`.

Fixes at template encoding
^^^^^^^^^^^^^^^^^^^^^^^^^^

The encoding of template files is now properly auto-detected, fixing
loading of any template using an encoding incompatible with UTF-8.


Plugins
=======

Significant updates on Split Window Plugin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Geany Universe
==============


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
