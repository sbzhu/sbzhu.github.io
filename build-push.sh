#!/bin/bash

rm -rf _site

jekyll build

git add -A
git commit -m 'edit'
git push origin master

echo 'done'
