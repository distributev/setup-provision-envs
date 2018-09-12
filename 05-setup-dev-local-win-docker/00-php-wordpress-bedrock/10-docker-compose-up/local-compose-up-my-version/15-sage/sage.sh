#!/bin/bash
set -ax

SAGE_PATH=$1
APP_DOMAIN=$2

if [ ! -d $SAGE_PATH ]; then

  echo "Installing Sage9 theme..."
  composer create-project roots/sage $SAGE_PATH dev-master
  
  npm i --prefix=$SAGE_PATH #install npm dependencies
  npm run build --prefix=$SAGE_PATH #compile assets
  
fi

  cat > $SAGE_PATH/resources/assets/config-local.json << EOF
{
  "devUrl": "http://$APP_DOMAIN"
}
EOF
