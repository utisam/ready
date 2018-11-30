#!/bin/bash
[ -n "$__READY_CHECK_COMMAND_SH" ] && return || readonly __READY_CHECK_COMMAND_SH=1
source $(dirname $BASH_SOURCE)/output.sh

check_command() {
    out_title "Command: $1"
    if command -v "$1" > /dev/null; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
