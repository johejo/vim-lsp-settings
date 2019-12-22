#!/bin/sh

set -e

cd $(dirname $0)

. ../installer/npm.sh

npm_install typescript-language-server
