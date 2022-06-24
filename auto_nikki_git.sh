#!/bin/sh

date_string=`date "+%Y%m%d"`

git status -s | awk '{print $NF}' | xargs git add
git commit -m $date_string | git push
