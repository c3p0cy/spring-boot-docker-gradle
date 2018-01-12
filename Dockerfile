FROM openjdk:9.0.1-jdk-slim
VOLUME /tmp
ADD target/spring-boot-docker-1.0.0-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]