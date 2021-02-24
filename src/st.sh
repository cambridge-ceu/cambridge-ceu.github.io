#!/usr/bin/bash

cd docs
bundle exec jekyll build
cd -
for f in .gitignore README.md src docs
do
  git add ${f}
  git commit -m "${f}"
done
git push
