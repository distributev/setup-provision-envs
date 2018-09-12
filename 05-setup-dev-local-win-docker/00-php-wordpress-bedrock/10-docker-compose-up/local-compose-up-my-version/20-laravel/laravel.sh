#!/bin/bash
set -ax

LARAVEL_PATH=$1

if [ ! -d $LARAVEL_PATH ]; then

  echo "Installing Laravel..."
  composer create-project --prefer-dist laravel/laravel $LARAVEL_PATH
  
  npm i --prefix $LARAVEL_PATH
  npm run development --prefix $LARAVEL_PATH

fi