# 使用更小的基础镜像以减少内存占用
FROM node:22-alpine

# 安装必要的依赖（alpine系统使用apk）
RUN apk add --no-cache curl

# 关键修复：设置环境变量，禁止安装后自动进入交互式配置
ENV CLAWDBOT_SKIP_POST_INSTALL=1

# 运行官方安装脚本（现在它会跳过“Starting setup...”）
RUN curl -fsSL https://clawd.bot/install.sh | bash

# 明确指定clawdbot的完整路径作为入口点
ENTRYPOINT ["/root/.local/share/clawdbot/bin/clawdbot", "gateway", "--host", "0.0.0.0"]