FROM tomcat:latest as build
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
