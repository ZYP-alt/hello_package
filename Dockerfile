# 使用官方 Python 镜像作为基础
FROM python:3.11-slim

# 设置工作目录（容器内的路径）
WORKDIR /app

# 复制项目文件到容器
COPY . .

# 安装项目依赖（生产环境，不安装 dev 依赖）
RUN pip install --no-cache-dir .

# 暴露端口（Web 服务使用）
EXPOSE 8000

# 容器启动时执行 HTTP 服务
CMD ["uvicorn", "hello_package.server:app", "--host", "0.0.0.0", "--port", "8000"]