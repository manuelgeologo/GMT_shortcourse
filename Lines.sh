#!/bin/env bash

gmt begin
    echo 0 0 > t.dat
    echo 10 1 >> t.dat  #son las coordenadas de la linea 0,0 y 1,10
    gmt plot t.dat -R-1/11/-1/11 -JX15c/15c -W1p,red -BWSen -Ba

#si repetimos estas lineas y cambiamos las coordenadas podemos plotear el resto de lineas del ejemplo

    echo 0 1 > t.dat
    echo 10 2 >> t.dat   #son las coordenadas de la linea 0,0 y 1,10
    gmt plot t.dat -R-1/11/-1/11 -JX15c/15c -W3p,green -BWSen -Ba 
#no es neceario poner la region ni la zona nuevamente asi que podemos omitirlo
    echo 0 2 > t.dat
    echo 10 3 >> t.dat  
    gmt plot t.dat  -W3p,blue,dashed
    
    echo 0 3 > t.dat
    echo 10 4 >> t.dat  
    gmt plot t.dat  -W3p,doted

    echo 0 4 > t.dat
    echo 10 5 >> t.dat  
    gmt plot t.dat  -W3p,dash --PS_LINE_CAP=round #esto es para que mejorar la definición del borde

    echo 0 5 > t.dat
    echo 10 6 >> t.dat  
    gmt plot t.dat  -W15p,0_50 --PS_LINE_CAP=round
     

gmt end show


