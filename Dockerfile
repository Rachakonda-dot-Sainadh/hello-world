FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /var/lib/jenkins/workspace/buildjob/webapp/target
COPY webapp.war /usr/local/tomcat/webapps
