#!/bin/sh

if [ -f index.html ]; then
  echo "Synchronizing..."
  aws s3 sync . s3://xn--hwt-zla.com \
    --exclude '*.*' \
    --include '*.css' \
    --include '*.html' \
    --cache-control 'max-age=600' \
    --delete
else
  echo "You're not in the right directory, exiting..."
  exit
fi

echo Done
