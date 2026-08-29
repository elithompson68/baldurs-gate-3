#!/usr/bin/env bash
set -euo pipefail

decode_session() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 19 ) % 997))
  done
  echo "$value"
}

decode_session 19 19
