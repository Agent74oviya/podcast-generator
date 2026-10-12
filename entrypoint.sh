#!/bin/bash

echo "==============="

git cofig --global user.name "${GITHUB_ACTOR}"
git cofig --global user.email "${INPUT_EMAIL}"
git cofig --global --add safe.directory /github/workspace

python2 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"

git push --set-upstream origin main

echo "==============="

