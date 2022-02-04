#!/bin/bash
mediaowner=$(ls -ld /html | awk '{print $3}')
echo "Current /html owner is $mediaowner"
if [ "$mediaowner" != "www-data" ]
then
    chown -R www-data:www-data /html
fi
nginx -g "daemon off;"
