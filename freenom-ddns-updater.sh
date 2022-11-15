#!/bin/bash

$ipv4=$(dig +short myip.opendns.com @resolver1.opendns.com)

if [ $ipv4 -eq '' ] || [ !$FREENOMAPIKEY ] || [ !$1 ] || [ !$2 ];
then
    echo 'failed to get public ip address or api key'
    exit 0
fi

# update record with ipv4 address yet to come....
