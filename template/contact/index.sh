#!/bin/sh

PAGE=./index.html

# Delete it and remake it
rm $PAGE

cat $PAGE_HEADER >> $PAGE

echo "
_______________________________________________________________________________

Contact
_______

Feel free to hit us up with anything.

Email:
    highonlinux@tutanota.com

Irc:
    

Mailing List:
    

" >> $PAGE

cat $PAGE_COMMENTS >> $PAGE
cat $PAGE_FOOTER >> $PAGE