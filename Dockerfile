FROM openjdk:8-slim
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["java", "-jar","db-api-for-docker.jar"]
EXPOSE 9999