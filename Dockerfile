# Pull base image 
FROM tomcat:8 
LABEL app=my-app
# Maintainer 
MAINTAINER "lharish609@gmail.com" 
COPY target/webapp.war /usr/local/tomcat/webapps/myweb.war
