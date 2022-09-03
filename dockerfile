FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/
#COPY target/*.* /usr/local/tomcat/webapps
#RUN java -jar /usr/local/tomcat/webapps/my-app-1.0-SNAPSHOT.jar

MAINTAINER saikumar
CMD ["catalina.sh","run"]
