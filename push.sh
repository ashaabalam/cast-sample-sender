#!/bin/bash

DEST='devrajm/cast-sample-sender'
BUCK="gs://$DEST"

gsutil cp index.html $BUCK/index.html
gsutil cp sender.js $BUCK/sender.js

gsutil acl ch -u 'AllUsers:R' $BUCK/index.html
gsutil acl ch -u 'AllUsers:R' $BUCK/sender.js

open "https://storage.googleapis.com/$DEST/index.html"
