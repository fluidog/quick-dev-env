# 通用开发环境 docker 镜像

本项目旨在提供一个统一的 linux 开发环境，其基于 docker 技术，使得开发人员可以在任何地方快速部署一致的开发环境。目前支持部署 Ubuntu 和 Arch 环境。镜像内包含了常见的开发工具、终端环境等。

## 包含的工具和环境

- 系统环境：Ubuntu、Arch
- 开发工具：GCC, Clang, Git, Vim …
- 终端环境：zsh, ohmyzsh, starship ...
- 其他常用工具和库

## 使用方法

1. 确保已安装 docker 程序。
2. 在本项目根目录下，通过容器运行开发环境和文件服务器。
    
    ```bash
    docker compose up -d devenv-ubuntu nfs-server
    ```
    
3. 远程登录开发环境。
    
    ```bash
    ssh ssh://root@127.0.0.1:6722
    ```
    

## 注意事项

### 容器逃逸

即访问宿主机的方法。有时候需要在宿主机下执行一些必要的操作，比如更新自身，升级内核等等。

- 通过 ssh 连接，前提是宿主机必须开启 sshd 服务。
- 通过 tmux 连接，前提是宿主机创建一个 tmux 会话，将 tmux 通信的 socket 映射到容器内。
    
    ```bash
    tmux -S /run/tmux-keep has-session &> /dev/null ||
      tmux -S /run/tmux-keep new-session -d
    ```
    