#!/usr/bin/with-contenv bashio
CONFIG_PATH=$(bashio::config 'data_path')

cd /app
echo "Using config: $CONFIG_PATH"
npm start -- --config "$CONFIG_PATH/configuration.yaml"