#!usr/bin/env bash


sleep 240


mapfile="/steamcmd/rust/server/${IDENTITY}"
filename=$(find "${mapfile:?}" -type f -name "proceduralmap.*.map" -print)
filedate=$(date -r $filename +'%d/%m')
WIPED_TITLE="server.hostname \"$NAME:  Wiped $filedate\""
export WIPED_TITLE
chmod +x apps/title_app/app.js
 ./apps/title_app/app.js &
