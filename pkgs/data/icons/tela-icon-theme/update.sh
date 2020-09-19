#!/usr/bin/env nix-shell
#!nix-shell -i bash -p curl jq nix-prefetch-github

REV=$(curl -s https://api.github.com/repos/vinceliuice/Tela-icon-theme/tags | jq '.[0].commit.sha')
REV="${REV%\"}"
REV="${REV#\"}"

nix-prefetch-github --nix --rev $REV vinceliuice Tela-icon-theme > fetch.nix
curl -s https://api.github.com/repos/vinceliuice/Tela-icon-theme/tags | jq '.[0].name' > version-name.nix
