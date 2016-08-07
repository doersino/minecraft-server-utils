#!/bin/bash

local FROM="$MCSU_SOURCEDIR"
local TO="$MCSU_TARGETDIR/${MCSU_SOURCEDIR_BASENAME}"

mkdir -p "$TO"
rsync -xavh --delete "$FROM" "$TO"
