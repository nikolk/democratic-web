#/bin/bash
for img in *.svg; do
  inkscape -w 80 $file --export-filename $file.png
done
