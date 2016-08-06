#!/bin/bash

local REQUIRED_FREESPACE="$(du -s "$MCU_SOURCEDIR" | cut -f1)"

ls -1rt "$MCU_TARGETDIR" | grep - | while read -r f; do
    # break if enough free space is available
    if [ "$(df --output=avail "$MCU_TARGETDIR" | tail -1)" -ge "$REQUIRED_FREESPACE" ] ; then
        break
    fi

    # if we need to make still more space, delete the oldest (lexicographically
    # first) backup in the target directory
    rm -rf "$MCU_TARGETDIR/$f"
    echo "deleted $MCU_TARGETDIR/$f"
done

