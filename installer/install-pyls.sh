#!/bin/bash

set -e

server_dir="../servers/pyls"

cd $(dirname $0)

. ../installer/pip3.sh
pip_install pyls python-language-server
