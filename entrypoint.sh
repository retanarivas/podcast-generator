#!/bin/bash

echo "======================"

git confit --global user.name "${GITHUB_ACTOR}"
git confit --global user.email "${INPUT_EMAIL}"
git confit --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Updated Feed"
git push --set-upstream origin main

echo "======================"