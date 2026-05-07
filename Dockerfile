# Use Tomcat with Java 21
FROM tomcat:10.1-jdk21-temurin-alpine

# Remove default Tomcat apps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your built WAR file from the target folder
# Naming it ROOT.war makes it available at the base URL (/)
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat listens on 8080 by default
EXPOSE 8080

# No need for a java -jar ENTRYPOINT. Tomcat starts automatically.
CMD ["catalina.sh", "run"]
