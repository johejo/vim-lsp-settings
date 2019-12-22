#!/bin/bash

set -e

usage() {
  cat <<USAGE
Usage: $0 [pattern] [args]...

Examples 
$0 pyls
$0 "pyls|kotlin"
$0 bash start
USAGE
}

if [ $# == 0 ]; then
  usage
  exit 1
fi

test_installer() {
  "./installer/install-$1.sh"
  python3 ./test/req.py | "./servers/$1/$1" $2
  echo
  echo result="$?"
}
export -f test_installer

jq ".[][].command" -r -c <./settings.json | sort | uniq |
  grep -E "$1" |
  xargs -I% bash -c "test_installer % $2"
