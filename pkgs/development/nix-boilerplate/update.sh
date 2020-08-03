#!/usr/bin/env nix-shell
#!nix-shell -i bash -p nix-prefetch-github

rm fetch.nix
nix-prefetch-github --nix --rev master pietdevries94 nix-boilerplate > fetch.nix