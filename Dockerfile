FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/my-springboot-app-1.0.0.jar /app/springboot.jar  # Correct file name
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]
