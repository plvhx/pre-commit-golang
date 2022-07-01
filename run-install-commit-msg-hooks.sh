#! /bin/sh

file=".git/hooks/commit-msg"

if [ ! -f "$file" ]; then
	exit 0
fi

content=$(cat ./run-commitmsg-check.sh)

echo "$content" > .git/hooks/commit-msg
