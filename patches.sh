#!/bin/bash

GIT_REPOS=`grep -h VOPATCH= features/*/feature.xml | cut -f 2 -d'='`
BASE=`pwd`

for line in $GIT_REPOS; do
    # split line into chunks
    array=(${line//,/ })
    ID=${array[0]}
    REPO=${array[1]}
    BRANCH=${array[2]}
    LOCAL_PATH=${array[3]}
    BUNDLES_TO_BUILD=${array[4]}

    # local path has to be relative to aggregator folder
    cd $LOCAL_PATH

    # Check if repo has been added before
    if [ `git remote | grep $ID | wc -l` -eq 0 ]; then
     git remote add $ID $REPO
    fi
    git pull $ID $BRANCH

    cd $BASE
done


