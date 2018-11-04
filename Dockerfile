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