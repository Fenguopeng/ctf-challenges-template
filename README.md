# ctf-challenges-template

CTF出题模板

## Web

```
php_apache_demo
    │  challenge.yml # 题目基本信息，ctfcli使用
    │  docker-compose.yml # 本地测试使用
    │  Dockerfile
    │  README.md
    │
    ├─src # 网站应用源代码
    │      flag.php
    │      index.php
    │
    ├─writeup
    │      writeup.md
    │
    └─_files # 支撑文件目录
            flag.sh
            start.sh
```

## Pwn

```
Pwn
│  challenge.yml  # 题目基本信息，ctfcli使用
│  ctf.xinetd     # xinetd配置文件
│  docker-compose.yml # 用于本地测试
│  Dockerfile
│  README.md # 题目设计说明
│  start.sh  # 启动脚本
│
├─bin
│      helloworld # ELF可执行文件
│
└─writeup
        writeup.md # 题解
```

通过替换`bin`目录下的可执行文件。

默认设置为通过启动容器时传递环境变量实现动态flag。