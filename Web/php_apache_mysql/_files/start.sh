#!/bin/bash

# 有自定义 FLAG 脚本则需要执行它，这里是从环境变量获取 FLAG，则需要 source 来执行这个脚本从而改写环境变量，避免费预期解
if [[ -f /tmp/files/flag.sh ]]; then
	source /tmp/files/flag.sh
	rm -f /tmp/files/flag.sh
fi

# 启动 MySQL，设置root用户密码，导入数据
service mariadb start \
&& mysql -uroot -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');" \
&& mysql -u root -pyour_password < /tmp/files/data.sql

# 启动 Apache2 网站服务器
apache2-foreground