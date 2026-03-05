#!/usr/bin/env bash

curl -L https://github.com/keycloak/keycloak/releases/download/24.0.4/keycloak-24.0.4.tar.gz -o keycloak.tar.gz
tar -xzf keycloak.tar.gz

cd keycloak-24.0.4

bin/kc.sh start-dev --http-port=$PORT --hostname-strict=false
