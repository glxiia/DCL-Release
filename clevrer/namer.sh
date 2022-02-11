#!/bin/sh

dirs=$(ls | grep "image_")

for dir in $dirs
do
    cd $dir
    rename "s/image/video" image_*
    rename "s/sim/video" sim_*
    cd ..
done
