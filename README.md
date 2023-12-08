## Java Login App ##
Testing 

## Sample Java Login application uses "UserDB" database and Table schema to store the Employee Login details. ##

## How to see list of Databases ##
SHOW DATABASES;

## How to create Database ##

CREATE DATABASE UserDB;

## How to list Tables ##

USE UserDB;

SHOW TABLES;

## How to create Table ##
## Below Query to create require TABLE schema to store Employee records ##

CREATE TABLE Employee (
  id int unsigned auto_increment not null,
  first_name varchar(250),
  last_name varchar(250),
  email varchar(250),
  username varchar(250),
  password varchar(250),
  regdate timestamp,
  primary key (id)
);

## List Table data ##
SELECT * FROM Employee;

## Describe Table schema ##
DESCRIBE Employee;
-----------------------------------------------

Project Goal
The goal of this project is to deploy a Java application stack consisting of Nginx, Tomcat, and MySQL using Docker Compose. The entire process involves customizing the configurations of each container and ensuring seamless communication between them.

Pre-Requisites
Before proceeding with the deployment, ensure the following pre-requisites are met:

The Java login application source code is committed to the Bitbucket repository.
Customize the application.properties file with MySQL database name and credentials to establish a connection with the database.
Build the Java source code and keep the artifact ready (.war).
Docker-Compose Setup
Write a Docker-Compose YAML file to deploy Nginx, Tomcat, and MySQL application containers.

Nginx:
Customize Nginx application using the source image docker.io/nginx.
Map the nginx.conf to proxy requests to the Tomcat application container.
Expose port 80.
Tomcat:
Customize Tomcat application using the source image docker.io/amazonlinux.
Map tomcat-users.xml and the .war artifact to serve the Java login application.
Expose port 8080.
Install Java, MySQL, and Telnet packages.
MySQL:
Customize MySQL application using the source image docker.io/mysql.
Add environment variables to set up the database name and passwords.
Expose port 3306.
Create the table schema on container startup.
Update the Bitbucket repository README.md file with the table schema details compatible with the Login application.
Validation
Ensure the following steps are completed successfully for a validated deployment:

Confirm that all containers are running and healthy.
Log in to the Tomcat container and verify MySQL access using the mysql client CLI.
Create a hosted zone in AWS Route 53 and add an A record pointing to the EC2 instance Elastic IP.
Verify that the application is accessible using a public internet browser.

project reference : https://devopsrealtime.com/dockerize-a-java-web-application-using-docker-compose/
