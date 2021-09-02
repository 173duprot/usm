#!/bin/sh

PAGE=./index.html

echo $PAGE_HEADER >> $PAGE

echo "
Posts
________

" >> $PAGE

for dir in $(ls); do
    echo "@/<a href=/wiki/posts/$dir>$dir</a>" >> $PAGE
done

cat $PAGE_FOOTER >> $PAGE
