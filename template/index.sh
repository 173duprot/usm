#!/bin/sh

PAGE=./index.html

cat $PAGE_HEADER >> $PAGE

echo "
[<a class=t href=#1.0>1.0</a>] About
___________

We are a ragtag group of programmers, sysadmins, engeneers, and hobos that want
to share the things we find cool. On this site is a large swath of information
from ASM programming, to distro reviews, to plaintext formatting guides.


[<a class=t href=#1.0>2.0</a>] Phliosophy
________________

While some on this site may be strongly opinionated on certain topics, this
site seeks to provide a platform for experenced Power-Users and Devs to share
their ideas, guides, practices, and experences openly. 


[<a class=t href=#1.0>3.0</a>] Community
________________

We believe strongly in freedom of speech, and look to provide a platform for
open sharing and discussion of experenced technical users on everything from
chat protocols to music-making teqnuques.


[<a class=t href=#4.0>4.0</a>] Contribute
________________

We are community driven project, constantly looking for new contributers.
If you have something you want to say, simply send in a little
blurb/application to [highonlinux@tutanota.com](highonlinux@tutanota.com).

Once accepted, simply host a git repo with your [name|username] and mail
us the link in the email chail.

Adding an article is as simple @/<a href=/wiki/formatting-guide>formatting-guide</a>

+------------------------------------------------------------------------------+
| <git repo>/<article-name>.txt                                                |
+------------------------------------------------------------------------------+
|                                                                              |
| Article-name                                                                 |
|______________________________________________________________________________|
|                                                                              |
| Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod      |
| tempor incididunt ut labore et dolore magna aliqua. Sit amet purus gravida   |
| quis blandit. Nulla aliquet enim tortor at auctor urna nunc id cursus.       |
| Id interdum velit laoreet id donec ultrices.                                 |
|                                                                              |
| Note: This is what a note can look like                                      |
|                                                                              |
|                                                                              |
| [this is what a link looks like](example.com)                                |
|                                                                              |
|                                                                              |
| ----[example.c]                                                              |
| |                                                                            |
| |  /* What code/small-file looks like */                                     |             
| |                                                                            |
| |  int main() {                                                              |
| |      printf("Hello World");                                                |
| |  }                                                                         |
| --------------                                                               |
|                                                                              |
|                                                                              |
|    \`What inline code looks like\`                                           |
|                                                                              |
|                                                                              |
| Subsection 1                                                                 |
|_______________                                                               |
|                                                                              |
| Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod      |
| tempor incididunt ut labore et dolore magna aliqua. Sit amet purus gravida   |
| quis blandit. Nulla aliquet enim tortor at auctor urna nunc id cursus.       |
| Id interdum velit laoreet id donec ultrices.                                 |
|                                                                              |
|                                                                              |
| Subsection 2                                                                 |
|_______________                                                               |
|                                                                              |
| Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod      |
| tempor incididunt ut labore et dolore magna aliqua. Sit amet purus gravida   |
| quis blandit. Nulla aliquet enim tortor at auctor urna nunc id cursus.       |
| Id interdum velit laoreet id donec ultrices.                                 |
|                                                                              |
+------------------------------------------------------------------------------+
" >> $PAGE

cat $PAGE_FOOTER >> $PAGE
