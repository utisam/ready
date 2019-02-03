#!/usr/local/bin/ready

# This file is a script to check whether you are ready for development.
# Please install https://github.com/utisam/ready

check_command "ruby"
check_command "gem"
check_ruby_gem "bundler"
check_ruby_gem "jekyll"
check_ruby_gem "jekyll-gist"
