#!/bin/bash

declare READY_PIP_COMMAND=${READY_PIP_COMMAND:-pip3}
declare -r READY_PIP_FREEZE_CACHE="$READY_TEMP_DIR/pip-freeze.txt"

check_pip_command() {
    check_command $READY_PIP_COMMAND
}

_build_pip_freeze_cache() {
    if [[ ! -f "$READY_PIP_FREEZE_CACHE" ]]; then
        $READY_PIP_COMMAND freeze | grep -o "^[^=]*" > "$READY_PIP_FREEZE_CACHE"
    fi
}

check_pip_package() {
    out_title "pip freeze: $1"

    _build_pip_freeze_cache

    if grep -q "^$1$" "$READY_PIP_FREEZE_CACHE"; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
