#!/bin/zsh

set -e

if ! command -v security >/dev/null 2>&1; then
  print -u2 "install.sh: security command not found (kc requires macOS)"
  exit 1
fi

script_dir=${0:A:h}
install_dir=$HOME/.local/bin

mkdir -p "$install_dir"
install -m 755 "$script_dir/kc" "$install_dir/kc"

print "Installed kc to $install_dir/kc"
