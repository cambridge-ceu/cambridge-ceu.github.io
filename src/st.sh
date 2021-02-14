#!/usr/bin/bash

git add README.md
git commit -m "README.md"
cd docs
jekyll build
cd -
git add docs
git commit -m "docs"
git add src
git commit -m "src"
git push
