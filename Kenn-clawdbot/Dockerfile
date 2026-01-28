# 告诉服务器，我们需要一个安装了Node.js 22的环境
FROM node:22-slim

# 在服务器里更新软件列表，并安装一个叫curl的小工具
RUN apt-get update && apt-get install -y curl

# 运行Clawdbot官方的安装脚本
RUN curl -fsSL https://clawd.bot/install.sh | bash

# 告诉服务器，当这个容器启动时，自动运行clawdbot网关服务，并监听所有网络请求
ENTRYPOINT ["/root/.local/share/clawdbot/bin/clawdbot", "gateway", "--host", "0.0.0.0"]