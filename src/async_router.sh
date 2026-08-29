#!/usr/bin/env bash
set -euo pipefail

collect_resolver() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 92 ) % 997))
  done
  echo "$acc"
}

collect_resolver 92 92
