#/bin/bash
mkdir generated

inkscape -w $2  $1 --export-filename bg.png
img_size=$(($2 * 78 / 100))
img_off_x=$(($2 * 13 / 100))
img_off_y=$(($2 * 10 / 100))
magick convert -resize $img_sizex$img_size -quality 100 $3 fg.png
magick composite fg.png -geometry +$img_off_x+$img_off_y bg.png generated/$3
