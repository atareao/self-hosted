#!/bin/bash
mediaowner=$(ls -ld /html | awk '{print $3}')
echo "Current /html owner is $mediaowner"
/opt/nginx/sbin/nginx -g "daemon off;"
