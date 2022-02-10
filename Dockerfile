FROM tomcat:9
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
