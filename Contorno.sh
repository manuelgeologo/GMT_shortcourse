#!/usr/bin/env bash

#para plotear grillas de elevación usamos contours

gmt begin contour
#para pintar las curvas de nivel se usaría Wcolor porque son lineas Wared pesca las lineas con anotacion y las pone red 
    #gmt grdcontour @earth_relief_60m -JN15c -B -C1000 -A4000+f6p -Wathin,black -Wcthinnest,black
#esta linea se puede dividir en dos si hacemos un basemap 
    gmt basemap -JN15c -B -Rg
    gmt grdcontour @earth_relief_60m -C1000 -A4000+f6p -Wathin,black -Wcthinnest,black
#ISO country code da un codigo para plotear un pais en especifico       

gmt end show