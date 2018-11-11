#!/bin/bash

# This script is for "ready" to check if you are ready for development.
# Please install https://github.com/utisam/ready

check_command "go"

check_command "dep"
check_command "migrate"
check_command "mockgen"

check_command "mysql"
