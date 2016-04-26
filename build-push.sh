#!/bin/bash

jekyll build

git add -A
git commit -m 'edit'
git push origin master

echo 'done'
