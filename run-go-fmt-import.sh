#! /bin/sh

LIST_OF_FILES=$(goimports -l -w "$@")

echo "$LIST_OF_FILES"

if [ -n "$LIST_OF_FILES" ]; then
	exit 1
fi
