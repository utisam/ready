#!/bin/bash

declare -r READY_GEM_LIST_CACHE="$READY_TEMP_DIR/gem-list.txt"

_build_gem_list_cache() {
    if [[ ! -f "$READY_GEM_LIST_CACHE" ]]; then
        gem list --no-versions --quiet > "$READY_GEM_LIST_CACHE"
    fi
}

check_ruby_gem() {
    out_title "gem list: $1"

    _build_gem_list_cache

    if grep -q "^$1$" "$READY_GEM_LIST_CACHE"; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
