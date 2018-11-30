#!/bin/bash
[ -n "$__READY_CHECK_EVAL_SH" ] && return || readonly __READY_CHECK_EVAL_SH=1
source $(dirname $BASH_SOURCE)/output.sh

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
