# 请务必保证能从 hub.docker.com 上拉取下来。
# 尽量使用下载量高的官方认证镜像。
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 拷贝支撑文件到临时目录。
COPY _files /tmp/files/

# 拷贝源码到相应目录下。
COPY src /app/

# 执行命令，设置权限，安装依赖等。
# 在镜像启动阶段禁止执行需要长时间运行（编译等）以及需要访问互联网（安装包等）操作，此类操作请在此处完成。
# 命令请在一个 RUN 里执行，不要拆分成多个 RUN 以减小镜像体积。
RUN chmod +x /tmp/files/start.sh \
    && pip install -r /app/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 暴露端口
EXPOSE 5000

# 指定启动命令
CMD ["/tmp/files/start.sh"]
