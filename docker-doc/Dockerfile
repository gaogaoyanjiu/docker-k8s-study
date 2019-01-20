# DockerFile分为四部分组成：基础镜像信、维护者信息、镜像操作指令和容器启动时执行的指令。

# 一般来说，我们可以将 Dockerfile 分为四个部分：
#    基础镜像(父镜像)信息指令: FROM。
#    维护者信息指令: MAINTAINER。
#    镜像操作指令: RUN 、EVN 、ADD 和 WORKDIR 等。
#    容器启动指令: CMD 、ENTRYPOINT 和 USER 等。

# 依赖的官方jdk8版本，即基于哪个镜像
FROM frolvlad/alpine-oraclejdk8:slim
# 将本地文件夹挂载到当前容器
VOLUME /tmp
# 复制文件到容器
ADD eureka-server-0.0.1-SNAPSHOT.jar app.jar
#RUN bash -c 'touch /app.jar'
# 配置容器启动后执行的命令，采用的“熵源”(entropy source)的策略，使得tomcat启动更快
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
# 声明需要暴露的端口
EXPOSE 8761
