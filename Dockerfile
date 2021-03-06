FROM tomcat:8.0

MAINTAINER Neel

COPY target/SWE645Form-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost
COPY host-manager.xml /usr/local/tomcat/conf/Catalina/localhost
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF

EXPOSE 8888
EXPOSE 8383
EXPOSE 80

CMD ["catalina.sh", "run"]
