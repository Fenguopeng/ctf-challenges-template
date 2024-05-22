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
├─dist # 题目附件目录
│      name_md5.zip # 题目附件，命名规则为'名称_压缩包MD5'
│ 
└─writeup
        writeup.md # 题解
```

### 出题步骤

- 需在本地进行编码、编译工作，容器仅需编译好的可执行文件。
  - 根据需要确定`Dockerfile`中基础镜像`ubuntu`的版本
- 将可执行文件放在`bin`目录下
- 修改`ctf.xinetd`文件中的可执行文件名称
- 使用`docker-compose`进行本地题目测试
- 制作题目附件
  - 附件应包括可执行文件、库文件等。
  - 将全部附件压缩为一个ZIP压缩包，重命名为`题目名称_压缩包的MD5值`。
- 完善`challenge.yml`、`writeup`和`README`等文件