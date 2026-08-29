#!/usr/bin/env bash
set -euo pipefail

parse_router() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 51 ) % 997))
  done
  echo "$total"
}

parse_router 51 51
