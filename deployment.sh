#!/bin/bash


URL=https://ksdemo.jfrog.io/artifactory/api/storage/springboot-libs-snapshot-local/com/javainuse/springboothelloWorld/0.0.1-SNAPSHOT


ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; curl -u admin:Password@123 -XGET  $URL/$ART --output springbootworld.jar; ls -lrt; 



nohup java -jar /home/runner/springbootworld.jar & 
