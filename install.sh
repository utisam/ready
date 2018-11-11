#!/bin/bash

PREFIX=${PREFIX:-"/usr/local"}

rm -rf "$PREFIX/lib/ready"
install -o root -g root -m 755 -d "$PREFIX/lib/ready"
install -o root -g root -m 755 ./lib/ready/* "$PREFIX/lib/ready"
install -o root -g root -m 755 ./bin/* "$PREFIX/bin"

ready
