#!/bin/bash



#URL=https://ksdemo.jfrog.io/artifactory/api/storage/springboot-libs-snapshot-local/com/javainuse/springboothelloWorld/0.0.1-SNAPSHOT

URL=https://ksdemo.jfrog.io/artifactory/springboot-libs-snapshot-local/com/javainuse/springboothelloWorld/0.0.1-SNAPSHOT/springboothelloWorld-0.0.1-20220526.105557-11.jar

#ART=$(curl $URL | grep '.uri' | awk ' { print $3} ' | sed s/\"//g | sed s/,//g | tr -d '/' | grep jar | awk 'END{print}')

cd /home/runner; wget -N --no-check-certificate  $URL; ls -lrt; 



nohup java -jar /home/runner/springboothelloWorld-0.0.1-20220526.105557-11.jar & 
