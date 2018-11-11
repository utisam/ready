#!/usr/local/bin/ready

# This script is for "ready" to check if you are ready for development.
# Please install https://github.com/utisam/ready

check_command "make"
check_command "python3"
check_pip_command
check_pip_package "Sphinx"
check_pip_package "sphinx_rtd_theme"
check_pip_package "sphinxcontrib-blockdiag"
