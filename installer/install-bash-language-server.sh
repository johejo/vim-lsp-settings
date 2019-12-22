#!/bin/bash

set -e

cd $(dirname $0)

. ../installer/npm.sh

npm_install bash-language-server
