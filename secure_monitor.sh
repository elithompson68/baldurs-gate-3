#!/usr/bin/env bash
set -euo pipefail

fetch_service() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 18 ) % 997))
  done
  echo "$total"
}

fetch_service 18 18
