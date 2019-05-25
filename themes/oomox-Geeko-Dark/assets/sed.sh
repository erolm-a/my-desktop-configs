#!/bin/sh
sed -i \
         -e 's/#3a3a3a/rgb(0%,0%,0%)/g' \
         -e 's/#e6e6fa/rgb(100%,100%,100%)/g' \
    -e 's/#4a4a4a/rgb(50%,0%,0%)/g' \
     -e 's/#6daf22/rgb(0%,50%,0%)/g' \
     -e 's/#3a3a3a/rgb(50%,0%,50%)/g' \
     -e 's/#e6e6fa/rgb(0%,0%,50%)/g' \
	"$@"
