#!/bin/sh

# TODO: change directory to the shell script dir
cd `cd $(dirname "$0"); pwd -P;`
# TODO: reset all change back
git checkout HEAD .
# TODO: pull the newest version.
git pull

chmod +x *.sh
./CheckReadme.sh .
./EscapeCurlyBraces.sh .

# TODO: This file occur a crash that i can't fix
rm ./安全技术/理论/XMAN3夏令营/day8.md

gitbook install
gitbook build
