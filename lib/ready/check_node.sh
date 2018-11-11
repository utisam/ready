#!/bin/bash

check_npm_package() {
    out_title "NPM Package: $1"
    if npm ls -g -p $1 > /dev/null; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
