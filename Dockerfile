FROM tomcat:latest as build
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp.war /usr/local/tomcat/webapps
