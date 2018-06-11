#!/bin/sh

aws s3 cp --recursive ./static s3://asteroids.fastweb.media/static/
aws s3 cp ./index.html s3://asteroids.fastweb.media/

# Clear Cache
aws cloudfront create-invalidation --distribution-id="E21XTB5WRQHJB" --paths="/*"
