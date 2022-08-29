FROM tomcat:latest
RUN echo "<Context antiResourceLocking="false" privileged="true" > \
    <!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve" \
        allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> --> \
    <Manager sessionAttributeValueClassNameFilter="java\.lang\.(?:Boolean|Integer|Long|Number|String)|org\.apache\.catalina\.filters\.CsrfPreventionFilter\$LruCache(?:\$1)?|java\.util\.(?:Linked)?HashMap"/> \
</Context>" >> /usr/local/tomcat/webapps/manager/META-INF/context.xml
RUN echo "<tomcat-users xmlns="http://tomcat.apache.org/xml" \
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" \
              xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd" \
              version="1.0"> \
  <user username="admin" password="secret" roles="manager-gui"/> \
</tomcat-users>" >> /usr/local/tomcat/conf/tomcat-users.xml
WORKDIR /usr/local/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/


MAINTAINER saikumar
CMD ["catalina.sh","run"]
