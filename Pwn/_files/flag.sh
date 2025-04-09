#!/bin/sh

# 优先级：GZCTF_FLAG > FLAG > 默认值 "default_flag"
FLAG_VALUE=${GZCTF_FLAG:-${FLAG:-default_flag}}

echo $FLAG_VALUE > /home/ctf/flag
chmod 440 /home/ctf/flag

# 清理环境变量，避免非预期解
unset FLAG
unset GZCTF_FLAG