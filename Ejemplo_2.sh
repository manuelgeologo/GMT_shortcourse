#!/usr/bin/env bash

gmt begin
    gmt figure world1
#si queremos hacer mapas de todo el planeta (world)
#region global (Rg), proyección Hammer (JH) grid (B)
    gmt coast -Rg -JH0/15c -Gblue -Bg

gmt end show