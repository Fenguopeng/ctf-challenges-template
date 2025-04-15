#!/bin/sh

# 优先级：GZCTF_FLAG > FLAG > 默认值 "default_flag"
FLAG_VALUE=${GZCTF_FLAG:-${FLAG:-default_flag}}

# 替换动态 flag 到指定文件
sed -i "s/flag{}/$FLAG_VALUE/" /var/www/html/flag.php

# 如果需要生成动态 flag 文件，可以取消下面的注释
# 生成随机数字文件名，例如 "flag_123456"
# RANDOM_FILENAME="flag_$(head /dev/urandom | tr -dc 0-9 | head -c 6)"
# echo $FLAG_VALUE > /$RANDOM_FILENAME
# echo $FLAG_VALUE > /flag
# 生成 flag 文件到指定目录，例如 "/flag_is_here/flag"
# mkdir /flag_is_here && echo $FLAG_VALUE > /flag_is_here/flag

# 清理环境变量，避免非预期解
unset FLAG
unset GZCTF_FLAG