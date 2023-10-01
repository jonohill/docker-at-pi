#!/usr/bin/env bash

set -e

# git pull
mkdir -p data
# SOPS_AGE_KEY_FILE=key.txt sops exec-env secrets.enc.env 'docker-compose up -d tailscale' || true
SOPS_AGE_KEY_FILE=key.txt ./sops exec-env secrets.enc.env 'podman-compose up --remove-orphans -d'
