#!/bin/sh

BASE_DIR=$1

# Index
    # Update Subrepos
    # Update 
    # ...
    # Push changes

###################
# Update Subrepos #
###################

# Pulls out every .git file
BASE_DIR_GIT=$(find $BASE_DIR -name "*.git" -type d -prune)

# Visit every git repo in the base direcotry
for GIT in $BASE_DIR_GIT; do

    # Chage the repo from the .git file to the actual repo
    REPO=$(dirname $GIT)

    # Change to the repo's dir and update it
    (cd $REPO && git pull)   # NOTE: this method allows local cd-ing

done

################
# Update Feeds #
################

# Pulls out every .feed.sh (random file-ending im using for feed sh scripts)
BASE_DIR_FEED=$(find $BASE_DIR -name "*.feed.sh")

# Run every feed
for SCRIPT in $BASE_DIR_FEED; do
    source $SCRIPT
done

################
# Push changes #
################
