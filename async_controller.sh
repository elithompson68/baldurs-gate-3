#!/usr/bin/env bash
set -euo pipefail

load_client() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 52 ) % 997))
  done
  echo "$result"
}

load_client 52 52
