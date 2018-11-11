#!/bin/bash

check_command() {
    out_title "Command: $1"
    if type $1 > /dev/null; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
export -f check_command
