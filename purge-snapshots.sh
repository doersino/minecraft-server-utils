#!/bin/bash

REQUIRED_FREESPACE="$(du -s "$MCSU_SOURCEDIR" | cut -f1)"

ls -1rt "$MCSU_TARGETDIR" | grep - | while read -r f; do
    # break if enough free space is available
    if [ "$(df --output=avail "$MCSU_TARGETDIR" | tail -1)" -ge "$REQUIRED_FREESPACE" ] ; then
        break
    fi

    # if we need to make still more space, delete the oldest (lexicographically
    # first) snapshot in the target directory
    rm -rf "$MCSU_TARGETDIR/$f"
    echo "deleted $MCSU_TARGETDIR/$f"
done

