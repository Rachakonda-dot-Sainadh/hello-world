FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /var/lib/jenkins/workspace/buildjob/webapp/target/webapp.war /usr/local/tomcat/webapps
