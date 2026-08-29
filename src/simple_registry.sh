#!/usr/bin/env bash
set -euo pipefail

dispatch_collector() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 88 ) % 997))
  done
  echo "$result"
}

dispatch_collector 88 88
