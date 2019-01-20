# Dockerfile 是什么？
 - Dockerfile 是自动构建 Docker 镜像的配置文件，用户可以使用 Dockerfile 快速创建自定义的镜像。Dockerfile 中的命令非常类似于 Linux 下的 Shell 命令。
 - 一般来说，我们可以将 Dockerfile 分为四个部分：
 ```
     基础镜像(父镜像)信息指令： FROM。
     维护者信息指令： MAINTAINER。
     镜像操作指令： RUN 、EVN 、ADD 和 WORKDIR 等。
     容器启动指令： CMD 、ENTRYPOINT 和 USER 等。
 ```
 - 下面是一段简单的 Dockerfile 的例子：
 ```
  FROM python:2.7MAINTAINER Angel_Kitty <angelkitty6698@gmail.com>COPY . /app
  WORKDIR /app
  RUN pip install -r requirements.txt
  EXPOSE 5000ENTRYPOINT ["python"]CMD ["app.py"]
 ```
 - 我们可以分析一下上面这个过程：
 ``` 
   - 从 Docker Hub 上 Pull 下 Python 2.7 的基础镜像。
   - 显示维护者的信息。
   - Copy 当前目录到容器中的 /App 目录下 复制本地主机的 <src> ( Dockerfile 所在目录的相对路径)到容器里 <dest>。
   - 指定工作路径为 /App。
   - 安装依赖包。
   - 暴露 5000 端口。
   - 启动 App。
 ```
 这个例子是启动一个 Python Flask App 的 Dockerfile ( Flask 是 Python 的一个轻量的 Web 框架)，相信大家从这个例子中能够稍微理解了 Dockfile 的组成以及指令的编写过程。
  