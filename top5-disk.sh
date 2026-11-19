#!/bin/bash
#Show the five biggest folder inside the given folder

TARGET="$1"

if [ -z "$TARGET" ]; then
echo "Usage : ./top5-disk.sh <folder>"
exit 1
fi

if [ ! -d "$TARGET" ]; then 
echo "Error : $TARGET is not a folder"
exit 1
fi

du -h --max-depth=1 "$TARGET" | sort -rh | head -n 5