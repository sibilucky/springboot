 FROM openjdk:17-jdk-alpine
WORKDIR /app

# Copy the built JAR file from the build stage to the runtime stage
COPY --from=build /app/target/my-springboot-app-1.0.0.jar /app/springboot.jar

EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]
