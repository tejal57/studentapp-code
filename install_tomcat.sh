#!/bin/bash
apt-get update
apt-get install -y curl openjdk-8-jd
curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz
tar -xzvf apache-tomcat-9.0.96.tar.gz

