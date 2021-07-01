#!/usr/bin/bash

export title_of_post=$1
export content_of_post=$2
export name_of_post=$(date "+%F-${title_of_post}.md" | sed 's/ /-/g')

echo ${title_of_post}
echo ${content_of_post}
echo ${name_of_post}

cd docs/_posts

(
  echo ---
  echo layout: post
  echo title:  "$1"
  echo date:   `date "+%F %T +0000"`
  echo categories: jekyll update
  echo ---
  echo
  echo ${content_of_post}
  echo
  echo "<!--more-->"
  echo
  echo ---
  echo
  echo "## NOTES"
  echo
  echo A post is a file YYYY-MM-DD-${title_of_post}.ext in _posts with the required front matter.

) > ${name_of_post}

cd -
