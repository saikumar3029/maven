FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/


MAINTAINER saikumar
CMD ["catalina.sh","run"]
