FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps
COPY target/my-app-1.0-SNAPSHOT.jar .

MAINTAINER saikumar
CMD ["catalina.sh","run"]
