#!/bin/sh

BASE_DIR=$1

###################
# Update Subrepos #
###################

# Pulls out every index.sh file
BASE_DIR_SH=$(find -L $BASE_DIR -name "index.sh")

# Visit every git repo in the base direcotry
for INDEX_SH in $BASE_DIR_SH; do
    source "$INDEX_SH"
done
