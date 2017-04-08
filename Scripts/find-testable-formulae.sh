#!/usr/bin/env bash

# Hack to avoid testing BASE.PBP and its dependencies in CI

grep -Lwr \
  --include=\*.rb ./Formula \
  -e "BASE.PBP" \
  -e "base_pbp"
