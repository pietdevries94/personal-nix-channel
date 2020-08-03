#!/usr/bin/env bash
current=$(pwd)
for p in $(find .  -name 'update.sh' -exec dirname {} \;); do
  cd $p
  ./update.sh
  cd $current
done