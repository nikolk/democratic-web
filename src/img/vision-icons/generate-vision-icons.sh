#/bin/bash
for img in *.svg; do
  inkscape -w 80 $img --export-filename $(basename $img .svg).png
done
