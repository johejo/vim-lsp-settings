#!/bin/bash

set -e

cd $(dirname $0)

. ../installer/npm.sh

npm_install dockerfile-language-server-nodejs
