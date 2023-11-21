#!/bin/bash

pm2 describe NFC > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
  pm2 start npm --name "NFC" -- start --prefix POC-NFC-master
else
  pm2 reload all
fi;