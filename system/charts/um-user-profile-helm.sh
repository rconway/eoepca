#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

trap "cd '${ORIG_DIR}'" EXIT

helm upgrade -i -f um-user-profile-values.yaml rac-um-user-profile user-profile
