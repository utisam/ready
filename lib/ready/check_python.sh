#!/bin/bash

declare READY_PIP_COMMAND=${READY_PIP_COMMAND:-pip3}

check_pip_command() {
    check_command $READY_PIP_COMMAND
}

check_pip_package() {
    out_title "pip freeze: $1"
    if ($READY_PIP_COMMAND freeze | grep -q $1); then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
