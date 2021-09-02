#!/bin/sh

PAGE=./index.html

cat $PAGE_HEADER >> $PAGE

echo "
_______________________________________________________________________________

Contact
_______

Feel free to hit us up with anything. 

email:
    highonlinux@tutanota.com

irc:

    ********************

mailing list:

    **********************

" >> $PAGE

cat $PAGE_FOOTER >> $PAGE
