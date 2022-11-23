#!/bin/bash
ENCRYPT_SSL_FULLCHAIN_PATH="/etc/letsencrypt/archive/swpp2022.shop/fullchain1.pem"
ENCRYPT_SSL_PRIVKEY_PATH="/etc/letsencrypt/archive/swpp2022.shop/privkey1.pem"

CONTAINER_SSL_FULLCHAIN_PATH="/usr/app/ssl/fullchain.pem"
CONTAINER_SSL_PRIVKEY_PATH="/usr/app/ssl/privkey.pem"

# sudo docker run -d -p 3000:3000 --rm --name "frontend" frontend:latest
sudo docker run -it --rm \
    --name "frontend" \
    -p 443:443 \
    -v $ENCRYPT_SSL_FULLCHAIN_PATH/:$CONTAINER_SSL_FULLCHAIN_PATH \
    -v $ENCRYPT_SSL_PRIVKEY_PATH/:$CONTAINER_SSL_PRIVKEY_PATH \
    frontend:latest bash