#!/bin/bash

echo "setup deploy"
function setup(){
 mkdir -p /Users/dhavalpatel/deploy
 mkdir -p /Users/dhavalpatel/deploy/develop
 mkdir -p /Users/dhavalpatel/deploy/production
}
if [ -d /Users/dhavalpatel/deploy ]; then
 echo "YES";
else
 echo "NO";
 setup
fi

echo "moving file"
mv -f target/customer-service-0.0.1-SNAPSHOT.jar /Users/dhavalpatel/deploy/develop

echo "kill process"

echo "run application"
nohup java -jar /Users/dhavalpatel/deploy/develop/customer-service-0.0.1-SNAPSHOT.jar > /Users/dhavalpatel/deploy/develop/server-dev.log 2>&1 &

echo "deploy finish"