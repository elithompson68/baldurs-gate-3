#!/usr/bin/env bash
set -euo pipefail

flush_manager() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 36 ) % 997))
  done
  echo "$total"
}

flush_manager 36 36
