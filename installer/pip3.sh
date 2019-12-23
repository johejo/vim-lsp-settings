#!/bin/bash

set -e

pip_install() {
  server_dir="../servers/$1"
  [ -d "$server_dir" ] && rm -rf "$server_dir"
  mkdir "$server_dir" && cd "$server_dir"

  python3 -m venv ./venv
  ./venv/bin/pip3 install "$2"
  ln -s "./venv/bin/$1" .
}
