#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 NEW_PROJECT_NAME [PROJECT_DIR]" >&2
    exit 2
fi

newname="$1"

if [ -n "$2" ]; then
    cd "$2"
else
    cd "$(dirname "$0")/../.."
fi

pwd

oldname="$(ls .idea/*.iml | sed 's@^[.]idea/@@;s@[.]iml$@@')"

if [ -z "$oldname" ]; then
    echo Error: could not find old name
    exit 3
fi

find . -type f -name "*${oldname}*" | while read before; do
    after="$(echo "$before" | sed "s@${oldname}@${newname}@")"
    if [ "$before" != "$after" ]; then
        mv "$before" "$after"
    fi
done

find . -type f -exec perl -pi -e "s@\\b${oldname}\\b@${newname}@g" '{}' ';'
