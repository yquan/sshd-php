#!/bin/bash

cd "$(dirname "$0")"

# declare an array called array and define 3 vales
versions=( 7.1 7.2 7.3 7.4 8.0 )
for version in "${versions[@]}"
do
	echo ${version}
  git checkout release/${version}
  git pull
  docker build -t yquan/sshd-php:${version} .
done

docker image push --all-tags yquan/sshd-php
