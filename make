#!/bin/sh
set -e
tag="$(git describe --tags)"
dir="Tewi-$tag"
mkdir "$dir"
# Create PCF fonts
for file in *.bdf; do
	bdftopcf -o "$dir/${file%\.*}.pcf" "$file"
done
cp *.pcf "$dir"
cp COPYING "$dir"
cp README.md "$dir"
tar -cvJf "Tewi-$tag.tar.xz" "$dir"
rm -r "$dir"
