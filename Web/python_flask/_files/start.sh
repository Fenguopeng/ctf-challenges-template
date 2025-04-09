#!/bin/bash

# 检查并执行自定义 FLAG 脚本
if [[ -f /tmp/files/flag.sh ]]; then
	# 执行 flag.sh 脚本以加载 FLAG 环境变量
	source /tmp/files/flag.sh
	# 删除脚本，避免重复或意外使用
	rm -f /tmp/files/flag.sh
fi

# 运行Flask应用
python /var/www/html/app.py