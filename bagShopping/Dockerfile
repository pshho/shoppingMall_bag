FROM openjdk:17-jdk
ENV LANG=C.UTF-8
ARG JAR_FILE=./target/bagShopping-0.0.1-SNAPSHOT.jar

WORKDIR /app
COPY ${JAR_FILE} app.jar
COPY src/main/webapp /app/src/main/webapp
ENTRYPOINT [ "java", "-jar", "app.jar" ]