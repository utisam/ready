#!/usr/local/bin/ready

# This script is for "ready" to check if you are ready for development.
# Please install https://github.com/utisam/ready

check_command "make"
check_command "python3"
check_command "pip3"
check_pip3_package "Sphinx"