# 基础镜像，根据题目实际情况进行修改
FROM ubuntu:16.04

RUN sed -i 's#http://archive.ubuntu.com/ubuntu/#http://mirrors.aliyun.com/ubuntu/#' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y xinetd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -m ctf

WORKDIR /home/ctf

RUN cp -R /lib* /home/ctf \
    && cp -R /usr/lib* /home/ctf

RUN mkdir /home/ctf/dev \
    && mknod /home/ctf/dev/null c 1 3 \
    && mknod /home/ctf/dev/zero c 1 5 \
    && mknod /home/ctf/dev/random c 1 8 \
    && mknod /home/ctf/dev/urandom c 1 9 \
    && chmod 666 /home/ctf/dev/*

RUN mkdir /home/ctf/bin \
    && cp /bin/sh /home/ctf/bin \
    && cp /bin/ls /home/ctf/bin \
    && cp /bin/cat /home/ctf/bin

COPY ./ctf.xinetd /etc/xinetd.d/ctf
RUN echo "Service is currently unavailable, please try again later." > /etc/banner_fail

COPY _files /tmp/files/
COPY ./bin/ /home/ctf/

RUN chown -R root:ctf /home/ctf \
    && chmod -R 750 /home/ctf \
    && chmod +x /tmp/files/start.sh

USER ctf

CMD ["/tmp/files/start.sh"]

EXPOSE 9999
