#!/bin/bash
for i in *.html; do
    [ -f "$i" ] || break
    echo "Converting $i"
    eval "pandoc $i --from html --to markdown_strict -o $i.md"
done
