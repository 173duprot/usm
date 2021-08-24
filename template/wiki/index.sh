#!/bin/sh

PAGE=./index.html

# Delete it and remake it
rm $PAGE

####

cat $PAGE_HEADER >> $PAGE

for dir in $(ls); do
    echo "<a href=/wiki/authors/$dir>$dir</a>" >> $PAGE
done

cat $PAGE_COMMENTS >> $PAGE
cat $PAGE_FOOTER >> $PAGE
