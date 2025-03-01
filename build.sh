#!/usr/bin/env bash

flake_target="${1:-desktop}"

sudo nixos-rebuild switch --flake ".#$flake_target"
home-manager switch --flake "."
