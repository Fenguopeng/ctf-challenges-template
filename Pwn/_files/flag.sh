#!/bin/sh

# 生成动态flag
echo $FLAG > /home/ctf/flag
chmod 740 /home/ctf/flag

# 删除环境变量FLAG，避免非预期解
unset FLAG