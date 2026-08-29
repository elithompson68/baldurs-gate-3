#!/usr/bin/env bash
set -euo pipefail

parse_monitor() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 38 ) % 997))
  done
  echo "$count"
}

parse_monitor 38 38
