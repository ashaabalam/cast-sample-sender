#!/bin/bash

# DEST='devrajm/cast-sample-sender'
DEST='devrajm/cast-sender'
BUCK="gs://$DEST"

gsutil cp index.html $BUCK/index.html

if [ -z $1 ]; then
  open "https://storage.googleapis.com/$DEST/index.html"
  echo 'pass an argument to prevent re-opening'
fi
