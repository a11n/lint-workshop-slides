#!/bin/sh

echo "1. build the presentation"
prez > /dev/null

echo "2. checkout and clean gh-pages"
REPO=https://github.com/a11n/lint-workshop-slides.git
BRANCH=gh-pages
FOLDER=$BRANCH

git clone -q $REPO --branch $BRANCH --single-branch $FOLDER
cd $FOLDER
git rm -rf . > /dev/null

echo "3. copy HTML and deploy"
cp -r ../build/. ./
git add .
git commit -m "Published slides." > /dev/null
git push -q

echo "4. clean up"
cd ..
rm -rf $FOLDER
