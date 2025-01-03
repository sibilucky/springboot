FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/springboot-app-1.0.0.jar /app/springboot.jar  # Correct stage name used
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]
