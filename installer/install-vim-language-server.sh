#!/bin/sh

set -e

cd $(dirname $0)

. ../installer/npm.sh

npm_install vim-language-server
