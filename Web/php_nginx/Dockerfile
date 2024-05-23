# 请务必保证能从 hub.docker.com 上拉取下来。
# 尽量使用下载量高的官方认证镜像。
FROM php:7.4-fpm

# 更改 APT 源为阿里云镜像源
# php:5.6-apache Debian 版本为 9.x stretch，源已归档，URL格式与最新的不同
#RUN echo "deb http://mirrors.aliyun.com/debian-archive/debian stretch main contrib non-free" > /etc/apt/sources.list
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list 

# 更新 apt-get 并安装 nginx
RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 拷贝nginx配置文件
COPY config/nginx.conf /etc/nginx/conf.d/default.conf

# 拷贝支撑文件到临时目录。
COPY _files /tmp/files/

# 拷贝源码到相应目录下。
COPY src /var/www/html/

# 执行命令，设置权限，安装依赖等。
# 在镜像启动阶段禁止执行需要长时间运行（编译等）以及需要访问互联网（安装包等）操作，此类操作请在此处完成。
# 命令请在一个 RUN 里执行，不要拆分成多个 RUN 以减小镜像体积。

RUN chmod +x /tmp/files/start.sh

# 指定启动命令。
CMD ["/tmp/files/start.sh"]

# 申明暴露的端口！
EXPOSE 80
