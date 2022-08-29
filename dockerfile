FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war /usr/local/tomcat

MAINTAINER saikumar
CMD ["catalina.sh","run"]
