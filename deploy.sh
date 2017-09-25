#!/bin/bash

sh "echo "setup deploy"
function setup(){
 mkdir -p deploy
 cd deploy
 mkdir -p develop
 mkdir -p production
}
if [ -d /Users/dhavalpatel/deploy ]; then
 echo "YES";
else
 echo "NO";
fi

echo "moving file"
mv -f target/customer-service-0.0.1-SNAPSHOT.jar /Users/dhavalpatel/deploy/develop

echo "run application"
nohup java -jar /Users/dhavalpatel/deploy/develop/customer-service-0.0.1-SNAPSHOT.jar > /Users/dhavalpatel/deploy/develop/server-dev.log 2>&1 &

echo "Completed"