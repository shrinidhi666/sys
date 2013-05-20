#!/bin/sh
tree -adif -L 3 | sort -u | grep -e 0x | gawk '{print "./ren "$1}' | sh -v
