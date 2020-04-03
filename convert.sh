#!/bin/bash

convert -resize 1242x2688! main.png main_6_5.png
convert -resize 1242x2688! formulaire.png formulaire_6_5.png
convert -resize 1242x2688! devis.png devis_6_5.png

convert -resize 1242x2208! main.png main_5_5.png
convert -resize 1242x2208! formulaire.png formulaire_5_5.png
convert -resize 1242x2208! devis.png devis_5_5.png

convert -resize 2048x2732! main.png main_12_9.png
convert -resize 2048x2732! formulaire.png formulaire_12_9.png
convert -resize 2048x2732! devis.png devis_12_9.png

find . -name "*.png" -exec convert "{}" -alpha off "{}" \;
