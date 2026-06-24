# 使用官方 Python 镜像作为基础
FROM python:3.11-slim

# 设置工作目录（容器内的路径）
WORKDIR /app

# 复制项目文件到容器
COPY . .

# 安装项目依赖（生产环境，不安装 dev 依赖）
RUN pip install --no-cache-dir .

# 暴露端口（如果项目有 Web 服务）
# EXPOSE 8000

# 容器启动时执行的命令
CMD ["python", "-m", "hello_package"]