#!/bin/bash

out_title () {
    echo -n "$* ... "
}
export -f out_title

out_ok () {
    echo -e "\033[32mOK\033[00m"
}
export -f out_ok

out_ng () {
    echo -e "\033[41mNG\033[00m"
}
export -f out_ng
