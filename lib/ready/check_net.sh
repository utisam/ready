#!/bin/bash
[[ -n "$__READY_CHECK_NET_SH" ]] && return || readonly __READY_CHECK_NET_SH=1
source $(dirname $BASH_SOURCE)/output.sh

check_wildcard_localhost() {
    out_title "*.localhost=127.0.0.1"
    local addr=$(dig +noall +answer '*.localhost' | awk '{print $(NF)}')
    if [[ "$addr"="127.0.0.1" ]]; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
