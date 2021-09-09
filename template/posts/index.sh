#!/bin/sh

PAGE=./index.html

cat $PAGE_HEADER >> $PAGE

echo "
Posts
________

" >> $PAGE

for dir in $(ls ../authors/*/*.html); do
    echo "@/<a href=/wiki/posts/${dir}>${dir%.html}</a>" >> $PAGE
done

cat $PAGE_FOOTER >> $PAGE
