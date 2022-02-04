#!/bin/bash

if [ -n "$USERNAME" ] && [ -n "$PASSWORD" ]
then
    echo $USERNAME
    echo $PASSWORD
    echo "Mod htpasswd"
    htpasswd -bc /etc/nginx/htpasswd $USERNAME $PASSWORD
    echo Done.
else
    echo Using no auth.
    sed -i 's%auth_basic "Restricted";% %g' /etc/nginx/conf.d/default.conf
    sed -i 's%auth_basic_user_file htpasswd;% %g' /etc/nginx/conf.d/default.conf
fi
mediaowner=$(ls -ld /share | awk '{print $3}')
echo "Current /share owner is $mediaowner"
if [ "$mediaowner" != "www-data" ]
then
    chown -R www-data:www-data /share
fi
nginx -g "daemon off;"
