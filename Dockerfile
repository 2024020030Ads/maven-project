FROM tomcat:9.0-jdk17

WORKDIR /usr/local/tomcat/webapps/

COPY target/webapp.war app.war

EXPOSE 8080
