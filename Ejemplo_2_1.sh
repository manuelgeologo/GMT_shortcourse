#!/usr/bin/env bash

gmt begin

    gmt subplot begin 2x1 -Ff16c/25c -M0
#si queremos hacer mapas de todo el planeta (world)
    gmt coast -Rg -JH0/15c -Ggreen -Bg
    gmt coast -Rg -JN0/15c -Gblue -Bg -c #-c indica que se mueve a otro panel mas abajo
    gmt subplot end

gmt end show