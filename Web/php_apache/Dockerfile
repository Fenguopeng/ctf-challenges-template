# 请务必保证能从 hub.docker.com 上拉取下来。
# 尽量使用下载量高的官方认证镜像。
FROM php:5.6-apache

# 设置工作目录
WORKDIR /var/www/html

# 拷贝支撑文件到临时目录下
COPY _files /tmp/files/

# 拷贝网站源代码到工作目录
# 这里的 src 目录是相对路径，Dockerfile 所在目录的子目录
COPY src /var/www/html/

# 合并命令，减少镜像层数
# 执行命令，设置权限，安装依赖等
# 在镜像启动阶段禁止执行需要长时间运行（编译等）以及需要访问互联网（安装包等）操作，此类操作请在此处完成
RUN chmod +x /tmp/files/start.sh && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# 暴露端口
EXPOSE 80

# 指定启动命令
CMD ["/tmp/files/start.sh"]