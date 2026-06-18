root@OSO-Ubuntu-2404:/var/lib/jenkins/workspace/ProjetoAvaliacao2# cat Dockerfile 
FROM tomcat:9.0-jdk17

WORKDIR /usr/local/tomcat/webapps/

COPY target/webapp.war app.war

EXPOSE 8080
root@OSO-Ubuntu-2404:/var/lib/jenkins/workspace/ProjetoAvaliacao2# 
