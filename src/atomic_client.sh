#!/usr/bin/env bash
set -euo pipefail

decode_session() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 70 ) % 997))
  done
  echo "$total"
}

decode_session 70 70
