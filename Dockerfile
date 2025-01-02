# Use the official OpenJDK 17 image from the Docker Hub as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged Spring Boot JAR file into the container
# Assuming the JAR file is built and located in the target/ directory
COPY target/my-spring-boot-app-1.0.0.jar /app/my-spring-boot-app.jar


# Expose the port on which the application will run (default 8081 for Spring Boot)
EXPOSE 8081

# Run the Spring Boot application JAR when the container starts
ENTRYPOINT ["java", "-jar", "/app/my-spring-boot-app.jar"]
