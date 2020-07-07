#!/usr/bin/env bash

gmt begin antartica
    gmt basemap -R0/360/-90/-60 -JG0/-90/15c -B
    gmt grdcontour @earth_relief_60m -Lp
    gmt grdcontour @earth_relief_60m -Ln -Wblue
    gmt coast -Wthick


gmt end show