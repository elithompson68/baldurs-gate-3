#!/usr/bin/env bash
set -euo pipefail

collect_engine() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 32 ) % 997))
  done
  echo "$total"
}

collect_engine 32 32
