#!/usr/bin/env bash

openssl dhparam -out docker/nginx/config/pki/dhparam.pem 4096
openssl req -x509 -nodes -newkey rsa:4096 -keyout docker/nginx/config/pki/insecure.key -out docker/nginx/config/pki/insecure.crt -days 365
