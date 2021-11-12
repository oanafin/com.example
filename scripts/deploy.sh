#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/olzhas.pem \
    target/sweater-1.0-SNAPSHOT.jar \
    admin@3.6.114.111:/home/admin/

echo 'Restart server...'

ssh -i ~/.ssh/olzhas.pem admin@3.6.114.111 << EOF

pgrep java | xargs kill -9
nohup sudo java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'