# 请务必保证能从 hub.docker.com 上拉取下来。
# 尽量使用下载量高的官方认证镜像。
FROM php:7.4-apache

# 设置工作目录
WORKDIR /var/www/html

# 更改 APT 源为阿里云镜像源，可根据需要修改为其他源
# php:5.6-apache Debian 版本为 9.x stretch，源已归档，URL格式与最新的不同
#RUN echo "deb http://mirrors.aliyun.com/debian-archive/debian stretch main contrib non-free" > /etc/apt/sources.list
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list 

# 在镜像启动阶段禁止执行需要长时间运行（编译等）以及需要访问互联网（安装包等）操作，此类操作请在此处完成。
# 更新 apt-get 并安装 mariadb-server
RUN apt-get update \
    && apt-get install -y mariadb-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 拷贝数据库初始化脚本
COPY data/db.sql /tmp/db.sql

# 拷贝支撑文件到临时目录
COPY _files /tmp/files/

# 拷贝网站源代码到工作目录
# 这里的 src 目录是相对路径，Dockerfile 所在目录的子目录
COPY src /var/www/html/

# 合并命令，减少镜像层数
# 执行命令，设置权限等
RUN chmod +x /tmp/files/start.sh

# 暴露端口
EXPOSE 80

# 指定启动命令
CMD ["/tmp/files/start.sh"]