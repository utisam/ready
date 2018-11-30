#!/bin/bash
[ -n "$__READY_CHECK_PKG_CONFIG_SH" ] && return || readonly __READY_CHECK_PKG_CONFIG_SH=1
source $(dirname $BASH_SOURCE)/output.sh

check_pkg_config() {
    out_title "Pkg-config: $1"
    if pkg-config --exists "$1"; then
        out_ok
        return 0
    else
        out_ng
        return 1
    fi
}
