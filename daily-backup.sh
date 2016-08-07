#!/bin/bash

local FROM="$MCSU_SOURCEDIR"
local TO="$MCSU_TARGETDIR/${MCSU_SOURCEDIR_BASENAME}_$(date +%F)"

mkdir -p "$TO"
rsync -xavh --delete "$FROM" "$TO"


