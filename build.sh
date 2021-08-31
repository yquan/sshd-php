#!/bin/bash

cd "$(dirname "$0")"

# declare an array called array and define 3 vales
PHP_VERSIONS=( 7.1 7.2 7.3 7.4 8.0 )
for php_version in "${PHP_VERSIONS[@]}"
do
  echo "PHP: ${php_version}"
    docker build --build-arg ARG_PHP_VERSION=${php_version} -t yquan/sshd-php-node:${php_version} .
done

# docker image push --all-tags yquan/sshd-php
