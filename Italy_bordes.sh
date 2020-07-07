#!/usr/bin/env bash
#E (pais) IT (italy)  -bof (escribir el archuvo en binario y float) 
#-C+l3000 poigonos que son mas grandes de 3000 puntos
gmt pscoast -EIT -M | gmt convert -C+l3000 -bof > italia.bin
gmt begin italia png
#i2f two colums floats. ESta figura tiene coordenadas x,y son poligonos
    gmt plot -RIT+r1 -JM15 -Ba italia.bin -bi2f -Glightgreen -Wthin,dashed  -B+glightblue 
gmt end show
