#!/usr/bin/env bash

set -e

git pull
SOPS_AGE_KEY_FILE=key.txt sops exec-env secrets.enc.env 'docker-compose up -d tailscale' || true
SOPS_AGE_KEY_FILE=key.txt sops exec-env secrets.enc.env 'docker-compose up --remove-orphans -d'
