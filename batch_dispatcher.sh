#!/usr/bin/env bash
set -euo pipefail

parse_builder() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 16 ) % 997))
  done
  echo "$value"
}

parse_builder 16 16
