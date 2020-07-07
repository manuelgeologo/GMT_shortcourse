#!/usr/bin/env bash
gmt begin antartica2
    gmt basemap -R0/360/-90/-60 -JG0/-90/20c -B
#esta linea configura desde donde a donde le damos el color abyss para no pintar la topo (+)
    gmt makecpt -Cabyss -T-6000/0 
    gmt coast -Sc
    
        gmt grdimage @earth_relief_05m -C  -I+d
    gmt coast -Q
    gmt colorbar -DJBC+o-6c/0.5c+w8c -B1500 -Bx+l"Bathymetry [m]" -C

    gmt makecpt -Cgray -T-6000/6000
    gmt coast -Gc
        gmt grdimage @earth_relief_05m -C -I+d
    gmt coast -Q
    gmt colorbar -DJBC+o6c/0.5c+w8c -B1500 -Bx+l"Topography [m]" -C -G0/6000

    gmt coast -Wthick,black    

gmt end show     