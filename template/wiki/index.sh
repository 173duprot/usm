#!/bin/sh

for file in $(ls ./authors/*/*.html); do 
    ln -s "$file" "./posts/${file##*/}"
done
