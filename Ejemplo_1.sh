#!/usr/bin/env bash
gmt begin italy

# 'W' nos dibuja las costas 'B' dibuja el frame  'N' dibuja el borde. r1 nos cambia la grilla
#cada 1 grado  RIT 'región IT: italy' pero también puede ser W/E/S/N en coordenadas
#J define la proyección escogida y el tamaño en Cm (15) 'G' da el color del terreno
    gmt coast -RIT+r5 -Wthin -Glightgreen -Sskyblue -Df -A1 -B -N1/thick,red -JM15C
    
    #inset agrega un minimapa de ubicación TR topright +w le da el ancho 'F' da el marco de fondo
    #+o0.2c mueve el inset 0.2c del corner
    gmt inset begin -DjTR+w4.2c+o0.3c -M0 -F+gwhite+pthick
    #Rg region globo J proyección de perspectiva
        gmt coast -Rg -JG10/40/4c  -Gblack -Bg  -EIT+gred
    gmt inset end
gmt end show