#!/bin/bash
echo "ft_server starting"


service php7.3-fpm start

nginx -g "daemon off;"
#sleep 1000