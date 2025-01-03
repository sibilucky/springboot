 # Stage 1: Build the JAR file
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

# Stage 2: Run the JAR file with a minimal JDK image
FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/springboot-0.0.1-SNAPSHOT.jar /app/springboot.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/springboot.jar"]
