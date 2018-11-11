#!/bin/bash

SCRIPT_DIR="$(dirname $BASH_SOURCE)"

source "$SCRIPT_DIR/logger.sh"
source "$SCRIPT_DIR/output.sh"

source "$SCRIPT_DIR/check_command.sh"

source "$SCRIPT_DIR/check_node.sh"
source "$SCRIPT_DIR/check_python.sh"
