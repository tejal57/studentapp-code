FROM ubuntu:20.04 

LABEL APP="Studentapp"
USER root
WORKDIR /opt/

RUN apt-get update && \
    apt-get install -y curl openjdk-8-jdk && \
    curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz && \
    tar -xzvf apache-tomcat-9.0.96.tar.gz && \
    rm apache-tomcat-9.0.96.tar.gz

WORKDIR /opt/apache-tomcat-9.0.96

COPY target/*.war webapps/studentapp.war 
COPY context.xml conf/context.xml
ADD mysql-connector.jar lib/mysql-connector.jar

EXPOSE 8080

CMD ["bin/catalina.sh", "run"]
