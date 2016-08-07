#!/bin/bash

FROM="$MCSU_SOURCEDIR/"
TO="$MCSU_TARGETDIR/${MCSU_SOURCEDIR_BASENAME}"

mkdir -p "$TO"
rsync -xavh --delete "$FROM" "$TO"
