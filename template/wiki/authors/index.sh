#/bin/sh

git clone https://github.com/173duprot/173duprot.git

# ---------------------- #
# textfiles -> htmlfiles #
# ---------------------- #

for file in $(find -L ./ -name "*.txt"); do

    file_html="${file%.txt}.html"

    # If header exists, add header
    [ -e $HTML_HEAD ] && cat $HTML_HEAD >> $file_html

    # Copy text over, and turn []() into html link
    cat $file >> $file_html

    # If footer exists, add footer
    [ -e $HTML_FOOT ] && cat "$SITE/config/footer.html" >> $file_html

    # Remove text file from the site dir
    rm $file
done

