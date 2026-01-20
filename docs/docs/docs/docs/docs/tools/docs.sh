#!/usr/bin/bash

bundle exec jekyll build
if [ -d _site ]; then rm -rf docs; mv _site docs; fi
git add .
git commit -m "pages"
git push
