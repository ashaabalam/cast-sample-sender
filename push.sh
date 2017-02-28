#!/bin/bash

DEST='devrajm/cast-sample-sender'
BUCK="gs://$DEST"

gsutil cp -p index.html $BUCK/index.html

# gsutil acl ch -u 'AllUsers:R' $BUCK/index.html

open "https://storage.googleapis.com/$DEST/index.html"
