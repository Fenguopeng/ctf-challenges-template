#!/bin/sh

# 替换为动态flag
sed -i "s/flag{}/$FLAG/" /tmp/files/data.sql

# 生成动态flag
# mkdir /flag_is_here && echo $FLAG > /flag_is_here/flag

# 删除环境变量FLAG，避免非预期解
unset FLAG