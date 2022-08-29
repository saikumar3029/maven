FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps
COPY target/my-app-1.0-SNAPSHOT.jar .
EXPOSE 80
MAINTAINER saikumar
CMD ["catalina.sh","run"]
