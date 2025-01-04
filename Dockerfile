FROM openjdk:17-jdk-slim
COPY target/springboot.jar /app/springboot.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "springboot.jar"]

