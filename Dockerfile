# Stage 1: Build the application
FROM maven:3.8.4-jdk-11 AS builder
WORKDIR /app

# Copy the pom.xml and resolve dependencies
COPY pom.xml .
RUN mvn dependency:resolve

# Now copy the rest of the application
COPY . .

# Build the project
RUN mvn clean install

# Stage 2: Create the runtime image with the built JAR file
FROM openjdk:11-jre-slim
COPY --from=builder /app/target/my-app.jar /app/my-app.jar
CMD ["java", "-jar", "/app/my-app.jar"]


