FROM tomcat
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
