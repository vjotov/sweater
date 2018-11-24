#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'
scp -i ~/.ssh/id_rsa_drucoder \
    target/SNAPSHOT.jar \
    dru@192.168.0.1:/home/dru/

echo 'Restart server...'
ssh -i ~/.ssh/id_rsa_drucoder dru@192.168.0.1 << EOF

pgrep java | xargs kill -9
nohup java -jar SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'