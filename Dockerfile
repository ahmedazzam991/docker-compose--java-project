# Use the official Tomcat image as the base image
FROM tomcat:9-jdk11-openjdk-slim

# Install the MySQL client from the official MySQL image
RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

