#!/bin/sh

# group=2
# start at 02000-03000
for group in 9
do
    mkdir 'image_0'"$group"'000-0'"$((group+1))"'000'
    ls | grep '^sim_0'"$group"'...$' | xargs -I '{}' mv {} './image_0'"$group"'000-0'"$((group+1))"'000'
done
