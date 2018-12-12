#!/bin/bash
[[ -n "$__READY_CHECK_NODE_SH" ]] && return || readonly __READY_CHECK_NODE_SH=1
source $(dirname $BASH_SOURCE)/output.sh

declare -r READY_NPM_LS_CACHE="$READY_TEMP_DIR/npm-ls.txt"

_build_npm_ls_cache() {
    if [[ ! -f "$READY_NPM_LS_CACHE" ]]; then
        npm ls -g -p | xargs -L1 basename > "$READY_NPM_LS_CACHE"
    fi
}

check_npm_package() {
    out_title "NPM Package: $1"

    _build_npm_ls_cache

    if grep -q "^$1$" "$READY_NPM_LS_CACHE"; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
