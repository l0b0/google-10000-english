#!/bin/sh

set -o errexit -o nounset

words="${1-2048}"

printf '%s\n' "$(head -n "$words" words.txt | shuf | head --lines=4 | tr '\n' ' ')"
