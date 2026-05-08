# Use a base image with Java 21
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Match the exact .war extension found in your target folder
COPY target/*.war app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
