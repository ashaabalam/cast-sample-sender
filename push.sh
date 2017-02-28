#!/bin/bash

DEST='devrajm/cast-sample-sender'
BUCK="gs://$DEST"

gsutil cp index.html $BUCK/index.html

open "https://storage.googleapis.com/$DEST/index.html"
