#!/bin/env bash

gmt begin
    echo 0 0 > t.dat
    echo 10 1 >> t.dat
    gmt plot t.dat -R-1/11/-1/11 -JX15c/15c -W1p,red -BWSen -Ba



gmt end show


