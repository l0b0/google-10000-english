#!/bin/sh

set -o errexit -o nounset

shuf words.txt | head --lines=4
