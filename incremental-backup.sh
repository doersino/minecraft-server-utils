#!/bin/bash

local FROM="$MCU_SOURCEDIR"
local TO="$MCU_TARGETDIR/${MCU_SOURCEDIR_BASENAME}"

mkdir -p "$TO"
rsync -xavh --delete "$FROM" "$TO"
