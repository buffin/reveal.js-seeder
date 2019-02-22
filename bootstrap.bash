#!/usr/bin/env bash
set -e
set -x

RELEASE=3.7.0
TARGET=reveal

rm -rf $TARGET && mkdir $TARGET
wget https://github.com/hakimel/reveal.js/archive/$RELEASE.tar.gz
tar -C $TARGET -xvzf $RELEASE.tar.gz --strip-components=1
rm *.gz

rm -rf .git
rm README.md
rm bootstrap.bash
mv spawned-readme.md README.md

git init
git add .
git commit -m "New presentation based on reveal.js $RELEASE"
