# Use an official Gradle image as a builder
FROM gradle:8.10-jdk21 AS builder
WORKDIR /app
COPY app/. .
RUN gradle build --no-daemon

# Use a smaller JDK image for runtime, by only including compiled jar file when running the image
FROM eclipse-temurin:21-jre AS runtime
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
