#!/usr/bin/env bash
gmt begin symbols pdf
    echo 0 0 | gmt plot -R-1/6/-1/6 -JX15c/15c -BWSen -Bafg -Sc0.5 -Ggreen
    echo 1 0 | gmt plot -Sc0.5 -Ggreen -W2p
    echo 5 0 | gmt plot -Sc0.5 -W1p
    echo 0 3 | gmt plot -Skflash/1.5 -Gred -W1p #S (simbol) K (custom) flash (name simbol)
    echo 1 5 | gmt plot -Sk@gallo/3.0
    echo 5 5 | gmt plot -Sk@sardinha/6.0 
gmt end show
