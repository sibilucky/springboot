 FROM openjdk:17-jdk-slim
WORKDIR /app

# Update this line to match the actual filename in the target directory
COPY target/my-springboot-app-1.0.0.jar /app/springboot.jar

EXPOSE 8082
CMD ["java", "-jar", "springboot.jar"]


