#!/bin/bash

if  [[ $TRAVIS_PULL_REQUEST = "false" ]]
then
    ncftp -u "$USERNAME" -p "$PASSWORD" -P "$PORT" "$HOST"<<EOF
    rm -rf site/wwwroot
    mkdir site/wwwroot
    quit
EOF

    cd _site || exit
    ncftpput -R -v -u "$USERNAME" -p "$PASSWORD" -P "$PORT" "$HOST" /site/wwwroot .
fi
