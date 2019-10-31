# Git学习

## Git如何连接Github

### 1. 设置用户名及邮箱

```shell

git config --global user.name "你的用户名"

git config --global user.email "注册的email"

```

### 2. 初始化本地仓库

```shell

git init

```

### 3. Git 与 GitHub 的SSH 连接

```shell

ssk-key -t rsa -C "注册的email"

```

### 4. 复制提示路径下的`id_rsa.pub`文件里面的所有内容


### 5. 打开GitHub,选择settings设置，进入到`SSH and GPG keys`,将自己的密钥写入即可


## Git碰见的问题?

### Permanently added the RSA host key for IP address ‘192.30.252.128’ ...问题

这是希望我们能够将此ip加入到hosts文件中去

``` shell

vim /etc/hosts

# 添加如下文字

192.30.252.128　　github.com


```
