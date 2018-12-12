#!/bin/bash

PREFIX=${PREFIX:-"/usr/local"}
USER=${USER:-"root"}
if [ "$(uname)" == 'Darwin' ]; then
    GROUP=${GROUP:-"admin"}
else
    GROUP=${GROUP:-"root"}
fi

rm -rf "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 -d "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 ./lib/ready/* "$PREFIX/lib/ready"
install -o $USER -g $GROUP -m 755 ./bin/* "$PREFIX/bin"

ready
