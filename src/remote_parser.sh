#!/usr/bin/env bash
set -euo pipefail

fetch_collector() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 81 ) % 997))
  done
  echo "$total"
}

fetch_collector 81 81
