#!/bin/bash

mediaowner=$(ls -ld /share | awk '{print $3}')
echo "Current /share owner is $mediaowner"
if [ "$mediaowner" != "www-data" ]
then
    chown -R www-data:www-data /share
fi
/opt/nginx/sbin/nginx -g "daemon off;"
