#!/bin/bash

function autotest(){
    echo "===== unit test begin ====="
    # shellcheck disable=SC2045
    for file in `ls $1`
    do
      if [ -f $1"/"$file ]
      then
            echo "======= file:  $file ======"
            resty -I /etc/nginx/lua/ --errlog-level=warn $1"/"$file #执行单元测试
            echo "=================="
            echo ""
      elif [ -d $1"/"$file ]
      then
          echo "path: $file"
      fi
    done
}

path="/etc/nginx/spec"
autotest $path