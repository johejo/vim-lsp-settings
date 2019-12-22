#!/bin/sh

set -e

npm_install() {
  server_dir="../servers/$1"
  [ -d "$server_dir" ] && rm -rf "$server_dir"
  mkdir "$server_dir" && cd "$server_dir"

  npm init -y
  cat <<EOF >package.json
  {"name": ""}
EOF
  npm install "$1"

  ln -s "./node_modules/.bin/$1" .
}
