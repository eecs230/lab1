#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 TARGET_DIR [PROJECT_NAME]" >&2
    exit 2
fi

source="$(dirname "$0")/../.."
target="$1"

if [ -n "$2" ]; then
    project="$2"
else
    project="$(basename "$target")"
fi

mkdir -p "$target"
cp -a "$source/" "$target/"

"$target/.idea/eecs230/rename.sh" "$project"
