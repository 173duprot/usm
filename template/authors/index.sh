#!/bin/sh

#### Users ##############################################################

# 173duprot
git clone https://github.com/173duprot/173duprot
cd 173duprot
rm -rf .git
for file in $(ls); do
    cat $PAGE_HEADER >> "${file}.html"
    cat "$file" >> "${file}.html"
    cat $PAGE_COMMENTS >> "${file}.html"
    cat $PAGE_FOOTER >> "${file}.html"
done

#### Link ###############################################################

for file in $(ls *.html); do
    ln -s file ../
done 

#### Webpage ############################################################

PAGE=./index.html

cat $PAGE_HEADER >> $PAGE

echo "
 Authors
___________

" >> $PAGE

cat $PAGE_FOOTER >> $PAGE
