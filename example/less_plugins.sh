#!/usr/local/bin/ready

# This script is for "ready" to check if you are ready for development.
# Please install https://github.com/utisam/ready

check_command "npm"
check_npm_package "less"
check_npm_package "less-plugin-autoprefix"
check_npm_package "less-plugin-clean-css"
check_npm_package "less-plugin-csscomb"
check_npm_package "less-plugin-glob"
