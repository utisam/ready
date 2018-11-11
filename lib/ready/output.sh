#!/bin/bash

out_title () {
    echo -n "$* ... "
}

out_ok () {
    echo -e "\033[32mOK\033[00m"
}

out_ng () {
    echo -e "\033[41mNG\033[00m"
    READY_RESULT=1
}
