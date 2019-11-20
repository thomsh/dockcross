#!/usr/bin/env bash
set -euxo pipefail
make base
make moxiebox-moxie
TAG="$(date '+%Y%m%d')-$(git rev-parse --short HEAD)"
docker tag "dockcross/moxiebox-moxie:${TAG}" "ledgerhq/dockcross-moxiebox-moxie:${TAG}"
docker tag "dockcross/moxiebox-moxie:${TAG}" "ledgerhq/dockcross-moxiebox-moxie:latest"
