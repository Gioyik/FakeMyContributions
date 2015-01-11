#!/bin/sh

while read contrib
do
    fileName=`echo "$contrib" | tr " " "_"`
    contrib="$contrib 14:00 2015 +0500"
    echo "Generating files... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$contrib" --author="Gioyik" -m "$fileName"
done < contributions