#!/bin/bash
# writer.sh
# 把当前进程的pid写到管道
pipe=./testpipe

exec 3<>$pipe


if [[ "$1" ]]; then
    echo "$1" >>$pipe
else
    echo "Hello from $$" >>$pipe
fi
