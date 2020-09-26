#!/bin/bash

baseFolderName=$1

echo "Starting auto deploy"

git clone https://github.com/chen-ben-ami/target1.git

cd ${baseFolderName}

for OUTPUT in $(ls); do cd $OUTPUT; sh deploy.sh; cd ..; done

docker coontainer ls -a