#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "development" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

#cd stage/_book

#git init
git config user.name "egimaben"
git config user.email "egimaben@gmail.com"
git config user.password "soulsurvivor1"

git add .
git commit -m "travis commit at ${rev}"
git push origin master