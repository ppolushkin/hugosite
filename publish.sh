#!/bin/bash
echo "Generate Hugo site"
hugo

echo "Push Hugo site"
cd public
git add .
git commit -am 'comment'
git push origin master

echo "Push Hugo site sources"
cd ..
git add .
git commit -am 'comment'
git push origin master

