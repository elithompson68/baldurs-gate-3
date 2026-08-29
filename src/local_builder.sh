#!/usr/bin/env bash
set -euo pipefail

dispatch_parser() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 37 ) % 997))
  done
  echo "$total"
}

dispatch_parser 37 37
