#!/bin/sh

set -o errexit -o nounset

printf '%s\n' "$(shuf words.txt | head --lines=4 | tr '\n' ' ')"
