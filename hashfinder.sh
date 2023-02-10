#!/bin/bash

# Extract your stock source and cd to it
# git init
# git add .
# git commit -m "initial import from <vendor> - <version>"
# git remote add caf git://codeaurora.org/quic/la/kernel/msm
# git fetch caf
# hashfinder

best=9999999999
hash=""

for commit in $(git log --oneline refs/remotes/marlin/bugfix-2.0.x | awk '{print $1}')
do
    match=$(git diff $commit --shortstat --diff-filter M | awk -F' ' '{print $4 + $6}')
    echo $commit has $match lines changed

    if [ $match -lt $best ]; then
        best=$match
        tag=$commit
        echo $tag is the new best match with $best lines changed
    fi
done

echo "Best match"
echo TAG : $tag
echo Lines Changed : $best
