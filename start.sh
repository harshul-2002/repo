#!/usr/bin/env bash

echo "Installing Java..."
apt-get update
apt-get install -y openjdk-17-jdk

echo "Downloading Keycloak..."
curl -L https://github.com/keycloak/keycloak/releases/download/24.0.4/keycloak-24.0.4.tar.gz -o keycloak.tar.gz

tar -xzf keycloak.tar.gz
cd keycloak-24.0.4

echo "Starting Keycloak..."
bin/kc.sh start-dev --http-port=$PORT --hostname-strict=false
