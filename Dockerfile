# Stage 1: Build the JAR file using Maven
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

# Stage 2: Create the runtime image with the built JAR file
FROM openjdk:17-jdk-alpine
WORKDIR /app

# Copy the built JAR file from the build stage into the runtime image
COPY --from=build /app/target/my-springboot-app-1.0.0.jar /app/springboot.jar

EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]

