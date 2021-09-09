#!/bin/sh

#### Users ##############################################################

# 173duprot
echo "cloning author: 173duprot"
git clone https://github.com/173duprot/173duprot
cd 173duprot
rm -rf .git
for file in $(ls); do
    cat $PAGE_HEADER >> "${file}.html"
    cat "$file" >> "${file}.html"
    cat $PAGE_COMMENTS >> "${file}.html"
    cat $PAGE_FOOTER >> "${file}.html"
done
cd ..

#### Webpage ############################################################

PAGE=./index.html

cat $PAGE_HEADER >> $PAGE

echo "
 Authors
___________
" >> $PAGE

authors=$(ls | sed 's/index.sh//');
for line in $authors; do
	echo "<a href=./${line}>${line}</a>" >> $PAGE
done

cat $PAGE_FOOTER >> $PAGE
