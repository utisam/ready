#!/bin/bash

check_eval() {
    out_title "Eval: $*"
    if eval "$*"; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
