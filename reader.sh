#!/bin/bash
# filename: reader.sh
# 逐行读取管道中的内容

pipe=./testpipe


if read line <$pipe; then
	if [[ "$line" == 'quit' ]]; then
		break
	else
		echo $line   
	fi
fi

exec 3<&-
rm -rf $pipe

echo "Stop reader...."
