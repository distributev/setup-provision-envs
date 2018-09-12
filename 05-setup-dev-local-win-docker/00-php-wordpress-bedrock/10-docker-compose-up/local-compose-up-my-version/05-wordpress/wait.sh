#!/bin/bash

#This script will Wait for the wordpress_bedrock_sage container to be started

set -e

while ! nc -z wordpress_bedrock_sage $APACHE_PORT; do
  echo "Waiting for the 'wordpress_bedrock_sage' container to be started..."
  sleep 5
done

exec "$@"
