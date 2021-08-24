#!/bin/sh

PAGE=./example-site.html

# Delete it and remake it
rm $PAGE

# Header
cat $PAGE_HEADER >> $PAGE

# Static content
echo "
This is where you put your article following our @/ <a href=/wiki/style-guide>
NOTE: make links using <a href=[link]> name </a>
" >> $PAGE

# Dynamic content
#### (this is just an example, you can do basically anything)
for location in $(ls); do
    echo "$location" >> $PAGE
done

# Comments section
cat $PAGE_COMMENTS >> $PAGE

# Footer
cat $PAGE_FOOTER >> $PAGE
