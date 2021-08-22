#!/bin/sh

###############################
# init [Directories/Varibles] #
###############################

# Local varables
TEMPLATE=$1
SITE=$2

# Setup a clean working directory
rm -rf $SITE
mkdir $SITE

# Copy files over to working directory
cp -Lrf $TEMPLATE/* $SITE 

# Global varables
export BASE=$(cd $SITE; pwd)


########################################
# Unfold the textfiles into html files #
########################################

for file in $(find -L $BASE -name "*.txt"); do
    file_html="${file%.txt}.html"

    # Add header
    cat "$SITE/config/header.html" >> $file_html
    # Turn []() into html link
    cat $file | awk '!_ && match($0, /(.*)\[(.+)\]\((.+)\)(.*)/, u)  { _=1; printf("%s<a href='%s'>%s</a>%s", u[1], u[3], u[2], u[4]) }' >> $file_html
    # Add footer
    cat "$SITE/config/footer.html" >> $file_html
    
    # Remove text file
    rm $file
done

#############################################################################
# Run scripts in every folder (used for: rss feeds, cloning user's githubs) #
#############################################################################

# Pulls out every index.sh file
BASE_DIR_SH=$(find -L $BASE -name "index.sh")

# Visit every git repo in the base direcotry
for INDEX_SH in $BASE_DIR_SH; do
    # Run index.sh
    source "$INDEX_SH"
done


###################################
# Push the working directory live #
###################################

