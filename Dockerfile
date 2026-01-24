# Use a valid Java 8 image (Alpine version is removed from Docker Hub)
FROM openjdk:8-jre-slim

# Application working directory
WORKDIR /app

# Copy the Spring Boot executable JAR built by Gradle
COPY build/libs/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
