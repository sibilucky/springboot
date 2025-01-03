 FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/springboot-0.0.1-SNAPSHOT.jar /app/springboot.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]
