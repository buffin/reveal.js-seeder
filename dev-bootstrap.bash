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
git init
git commit -a -m 'New presentation based on reveal.js $RELEASE'