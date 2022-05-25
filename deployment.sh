#!/bin/bash

URL=https://ksdemo.jfrog.io/artifactory/api/storage/maven-demo/com/javainuse/SpringBootHelloWorld/1.1.1-SNAPSHOT

ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; wget --user admin --password Password@123  $URL/$ART; ls -lrt; 


nohup java -jar /home/runner/$ART & 
