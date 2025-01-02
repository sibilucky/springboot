## Use a base image for Java
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the build context into the container
COPY target/springboot-0.0.1-SNAPSHOT.jar /app/my-springboot-app.jar


# Expose the application port (optional, defaults to 8080 for Spring Boot)
EXPOSE 8082

# Command to run the app when the container starts
ENTRYPOINT ["java", "-jar", "my-springboot-app.jar"]
