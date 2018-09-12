#!/bin/bash
set -ax

BEDROCK_PATH=$1

echo "Installing wordpress..."
(cd $BEDROCK_PATH && php -d memory_limit=512M "$(which wp)" package install aaemnnosttv/wp-cli-dotenv-command && wp dotenv salts regenerate && wp core install \
  --title=${SITE_TITLE} \
  --admin_user=${ADMIN_USER} \
  --admin_password=${ADMIN_PASS} \
  --admin_email=${ADMIN_EMAIL} \
  --url=${WP_HOME} \
  --skip-email && wp theme activate sage/resources)