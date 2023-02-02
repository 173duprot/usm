#!/bin/sh

echo "Building ${HOST}..."

# Some important global varibles

export BASE=$(pwd)
export HEAD=$BASE/template/head.html
export FOOT=$BASE/template/foot.html

# Visit every file that does not have a . in it

for SCRIPT in $(find -type f -regex "\./[^.]*$"); do
    cd $(dirname $SCRIPT) # Cd to the script's directory for relative commands
    source "$SCRIPT"      # Run the file
    rm $SCRIPT            # Remove script from the site dir
done

