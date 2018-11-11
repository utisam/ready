#!/bin/bash

# 0: DEBUG
# 1: INFO
# 2: WARN
# 3: ERROR
READY_LOG_LEVEL=${READY_LOG_LEVEL:-1}

log_debug() {
    if (( $READY_LOG_LEVEL <= 0 )); then
        echo -e "\033[1;40m DEBUG \033[00m $*"
    fi
}

log_info() {
    if (( $READY_LOG_LEVEL <= 1 )); then
        echo -e "\033[1;44m INFO \033[00m $*"
    fi
}

log_warn() {
    if (( $READY_LOG_LEVEL <= 2 )); then
        echo -e "\033[1;43m WARN \033[00m $*"
    fi
}

log_error() {
    if (( $READY_LOG_LEVEL <= 3 )); then
        echo -e "\033[1;41m ERROR \033[00m $*"
    fi
}
