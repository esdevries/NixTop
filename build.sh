#!/usr/bin/env bash

flake_target="${1:-desktop}"

sudo nixos-rebuild switch --flake ".#$flake_target" --upgrade
home-manager switch --flake "."
