#!/usr/bin/env bash
gmt begin antartica2
    gmt basemap -R0/360/-90/-60 -JG0/-90/15c -B
# I le da sobreado a los cerros C le da el color a la topo 
    gmt grdimage @earth_relief_01m -Cabyss  -I
    gmt colorbar -DJBC -B2000 -C

gmt end show     