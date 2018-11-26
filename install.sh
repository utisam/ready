#!/bin/bash

PREFIX=${PREFIX:-"/usr/local"}
USER=${USER:-"root"}
GROUP=${GROUP:-"root"}

rm -rf "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 -d "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 ./lib/ready/* "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 ./bin/* "$PREFIX/bin"

ready
