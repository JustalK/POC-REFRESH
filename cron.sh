#!/bin/bash

cd /home/admin/code/POC-REFRESH/
npm run start

pm2 describe NFC > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
  pm2 start npm --name "NFC" -- start --prefix POC-NFC-master
fi;