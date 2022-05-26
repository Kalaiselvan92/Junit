#!/bin/bash


URL=https://ksdemo.jfrog.io/artifactory/api/storage/maven-demo/com/javainuse/SpringBootHelloWorld/0.1.1-SNAPSHOT


ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; wget --user admin --password Password@123  $URL/$ART; mv /home/runner/$ART /home/runner/springbootworld.jar; ls -lrt; 



nohup java -jar /home/runner/springbootworld.jar & 
