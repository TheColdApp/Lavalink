#!/bin/bash
set -e

# Write the config file from env variable
echo "$LAVALINK_CONFIG" > application.yml

# Run Lavalink with the config file
exec java -Djdk.tls.client.protocols=TLSv1.1,TLSv1.2 -jar Lavalink.jar
