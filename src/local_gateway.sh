#!/usr/bin/env bash
set -euo pipefail

resolve_context() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 34 ) % 997))
  done
  echo "$acc"
}

resolve_context 34 34
