FROM openjdk:17-jdk-slim
maintainer saikumar
#RUN yum install httpd -y
expose 8081
# Expose the application port
RUN mkdir manikanta1802
workdir /app
copy . .
CMD ["java", "-jar", "/app/my-app-1.0-SNAPSHOT.jar"]




# ___before classes
#FROM tomcat:latest

#WORKDIR /usr/local/tomcat/webapps
#ADD https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/
#COPY target/*.* /usr/local/tomcat/webapps
#RUN java -jar /usr/local/tomcat/webapps/my-app-1.0-SNAPSHOT.jar

#MAINTAINER saikumar
#CMD ["catalina.sh","run"]
#CMD ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
