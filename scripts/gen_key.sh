#!/bin/bash
openssl genrsa -des3 -out site.key 1024
openssl req -new -key site.key -out site.csr
openssl x509 -req -days 365 -in site.csr -signkey site.key -out final.crt