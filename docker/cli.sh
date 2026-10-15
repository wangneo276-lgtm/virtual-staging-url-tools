#!/bin/sh
set -eu
base="https://virtual-staging.app"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  tool)
    case "${2:-}" in
      ai-staging) printf '%s\n' "$base/tools/ai-staging" ;;
      furniture-removal) printf '%s\n' "$base/tools/furniture-removal" ;;
      short-video) printf '%s\n' "$base/tools/short-video" ;;
      multilingual) printf '%s\n' "$base/tools/multilingual" ;;
      cg-annotation) printf '%s\n' "$base/tools/cg-annotation" ;;
      aozora) printf '%s\n' "$base/tools/aozora" ;;
      *) echo "unknown tool" >&2; exit 2 ;;
    esac
    ;;
  guide)
    case "${2:-}" in
      compliance) printf '%s\n' "$base/compliance" ;;
      homestaging) printf '%s\n' "$base/homestaging" ;;
      akushitsu-taisaku) printf '%s\n' "$base/akushitsu-taisaku" ;;
      pricing) printf '%s\n' "$base/pricing" ;;
      blog) printf '%s\n' "$base/blog" ;;
      features) printf '%s\n' "$base/features" ;;
      *) echo "unknown guide" >&2; exit 2 ;;
    esac
    ;;
  *)
    echo "usage: virtual-staging-url-tools home | page <name> | tool <slug> | guide <slug>" >&2
    exit 2
    ;;
esac
