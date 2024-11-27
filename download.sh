#!/bin/bash

SCRIPT_PATH=$(dirname "$0")
case "$1" in 
    p)
        ~/workshop_downloader/plu.py -o ~/maps $2
        ln -s -f ~/maps/*.vpk ~/steam/l4d2_sm/left4dead2/addons/
    ;; 

    c)
        ~/workshop_downloader/col.py -o ~/maps $2
        ln -s -f ~/maps/*.vpk ~/steam/l4d2_sm/left4dead2/addons/
    ;;

    *)
        echo "Usage: $0 {p|c} <id>"
	echo "p for single plugin, c for collection"
        exit 1
    ;;
esac
