#!/bin/sh

rm -rf ./power-highonlinux
cp -rf ./template ./power-highonlinux

# Set Useful Varables for scripts
export BASE="$(pwd)/power-highonlinux"

export PAGE_HEADER="$BASE/PAGE/header.html"
export PAGE_COMMENTS="$BASE/PAGE/comments.html"
export PAGE_FOOTER="$BASE/PAGE/footer.html"

export AUTHORS="BASE/wiki/authors"

# Visit every .sh file in the base direcotry
for SCRIPT in $(find -L $BASE -name "*.sh"); do
    cd $(dirname $SCRIPT) # Cd to the script's directory for relative commands
    source "$SCRIPT"      # Run the .sh file
    rm $SCRIPT            # Remove index.sh from the site dir
done

# Push the working directory live
cd $BASE
git add ./
git commit -m "auto-update"
git push
