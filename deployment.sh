#!/bin/bash


URL=https://ksdemo.jfrog.io/artifactory/api/storage/springboot-libs-release-local/com/javainuse/springboothelloWorld/0.0.1-SNAPSHOT


ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; wget -N  $URL/$ART; mv /home/runner/$ART /home/runner/springbootworld.jar; ls -lrt; 



nohup java -jar /home/runner/springbootworld.jar & 
