#!/bin/bash
echo "ttt"
cd public
git add .
git commit -am 'comment'
git push origin master

cd ..
git add .
git commit -am 'comment'
git push origin master

