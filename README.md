# devel-env
Development environment based on ubuntu in docker.

本项目的目的是：搭建一个友好的 linux 开发环境。基于 docker 技术，使其可一键部署在任意平台。

- 发行版本：ubuntu 20.04

- 基本工具：vim git tmux ...

- 终端环境：azsh + ohmyzsh + starship + 各种插件 ...

- 开发工具：gcc ...


# 注意：

### 容器逃逸
即访问宿主机的方法。有时候需要在宿主机下执行一些必要的操作，比如更新自身，升级内核等等。
   - 通过 ssh 连接，前提是宿主机必须开启 sshd 服务。
   - 通过 tmux 连接，前提是宿主机创建一个 tmux 会话，将 tmux 通信的 socket 映射到容器内。
     ```sh
     tmux -S /run/tmux-keep has-session &> /dev/null ||
       tmux -S /run/tmux-keep new-session -d
     ```
