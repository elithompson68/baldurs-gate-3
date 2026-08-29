#!/usr/bin/env bash
set -euo pipefail

handle_router() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 23 ) % 997))
  done
  echo "$value"
}

handle_router 23 23
