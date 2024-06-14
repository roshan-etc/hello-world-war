# Use an official Tomcat base image with JDK 11
FROM tomcat:9.0.65-jdk11

# Maintainer info
LABEL maintainer="your-email@example.com"

# Define the argument for the WAR file name to make it flexible
ARG WAR_FILE=target/hello-world-war-1.0.0.war

# Copy the WAR file from the build context to the Tomcat webapps directory
COPY ${WAR_FILE} /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]

#docker build -t hello-world-tomcat .
#docker run -d -p 8080:8080 --name hello-world-app hello-world-tomcat
