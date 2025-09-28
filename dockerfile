# 使用轻量级 Ubuntu 镜像
FROM ubuntu:18.04

# 禁用交互模式
ENV DEBIAN_FRONTEND=noninteractive

# 安装运行所需的依赖

# 创建工作目录
WORKDIR /app

# 复制当前目录所有文件到容器中
COPY . /app/MediaServer

# 设置可执行文件的权限
RUN chmod +x /app/MediaServer/mediaserver

# 设置动态库路径
ENV LD_LIBRARY_PATH=/app/MediaServer/lib:$LD_LIBRARY_PATH

# 开放必要端口
EXPOSE 7001 7002 8888 8554 8332 8935 8080 8443 8000 10000

# 启动可执行文件
CMD ["./MediaServer/mediaserver", "-l", "2"]