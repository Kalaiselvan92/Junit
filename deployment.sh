#!/bin/bash



URL=https://ksdemo.jfrog.io/artifactory/api/storage/default-maven-local/com/javainuse/SpringBootHelloWorld/0.0.1-SNAPSHOT



ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; wget --user admin --password Password@123  https://ksdemo.jfrog.io/artifactory/default-maven-local/com/javainuse/SpringBootHelloWorld/0.0.1-SNAPSHOT/$ART; ls -lrt; 



nohup java -jar /home/runner/$ART & 
