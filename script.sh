#!/bin/bash
set $(python parse.py $URL)
path="/safari-dockloader/books/$1.epub"
book_id=$2

command="safaribooks-downloader -d -b $book_id -u $USER -p $PASS -o $path"
echo "$command"
$command
ebook-convert "/safari-dockloader/books/$1.epub" "/safari-dockloader/books/$1.pdf"
