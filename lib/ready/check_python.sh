#!/bin/bash

check_pip_package() {
    out_title "pip freeze: $1"
    if (pip3 freeze | grep -q $1); then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
export -f check_pip_package

check_pip3_package() {
    out_title "pip3 freeze: $1"
    if (pip3 freeze | grep -q $1); then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
export -f check_pip3_package
