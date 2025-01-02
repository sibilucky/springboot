FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY target/springboot-0.0.1-SNAPSHOT.jar /app/my-springboot-app.jar

# Expose the application port (optional, defaults to 8082 for Spring Boot)
EXPOSE 8082

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/my-springboot-app.jar"]
 
