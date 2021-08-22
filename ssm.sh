#!/bin/sh

# ---- #
# init #
# ---- #

for i in "$@"; do
    case $i in
        --header=*)
          HTML_HEAD="${i#*=}"
          shift # past argument=value
          ;;
        --footer=*)
          HTML_FOOT="${i#*=}"
          shift # past argument=value
          ;;
    esac
done

# Local Varables
TEMPLATE=$(cd $1; pwd)
SITE=$(rm -rf $2; mkdir $SITE; cd $2; pwd)

# Global varables
export BASE=$(cd $SITE; pwd)

# Copy template over to site directory
cp -Lrf $TEMPLATE/* $SITE 


# ---------------------- #
# textfiles -> htmlfiles #
# ---------------------- #

for file in $(find -L $BASE -name "*.txt"); do
    file_html="${file%.txt}.html"

    # If header exists, add header
    [ -e $HTML_HEAD ] && cat $HTML_HEAD >> $file_html

    # Copy text over, and turn []() into html link
    cat $file | awk '!_ && match($0, /(.*)\[(.+)\]\((.+)\)(.*)/, u)  { _=1; printf("%s<a href='%s'>%s</a>%s", u[1], u[3], u[2], u[4]) }' >> $file_html

    # If footer exists, add footer
    [ -e $HTML_FOOT ] && cat "$SITE/config/footer.html" >> $file_html
    
    # Remove text file
    rm $file
done

# ---------------------------- #
# Run local scripts [index.sh] #
# ---------------------------- #

# Visit every git repo in the base direcotry
for INDEX_SH in $(find -L $BASE -name "index.sh"); do
    # Run index.sh
    source "$INDEX_SH"
done

###################################
# Push the working directory live #
###################################

cd $SITE
git add ./
git commit -m "auto-update"
git push
