#docker build -t roshandocker11/hello-world-tomcat .
#docker run -d -p 8080:8080  roshandocker11/hello-world-tomcat

# Use an official Tomcat base image with JDK 11
FROM tomcat:9.0.65-jdk11
# Maintainer info
LABEL maintainer="Roshan"
ARG WAR_FILE=/var/lib/jenkins/workspace/Demo/target/hello-world-war-1.0.0.war
# Copy the WAR file from the specified path to the Tomcat webapps directory
COPY ${WAR_FILE} /opt/tomcat/webapps/
# Expose the default Tomcat port
EXPOSE 8082
# Start the Tomcat server
CMD ["catalina.sh", "run"]
