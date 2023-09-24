#!/bin/bash

# Function to determine the web server type
web_server_type() {
  # Logic to determine the web server type
  # You can use environment variables or any other method here
  echo "apache"  # Example: Set to "apache"
}

# Determine the web server type
WEB_SERVER=$(web_server_type)

# Execute the appropriate script based on the web server type
if [ "$WEB_SERVER" = "apache" ]; then
  exec /opt/bitnami/scripts/moodle/run.sh
elif [ "$WEB_SERVER" = "nginx" ]; then
  exec /opt/bitnami/scripts/nginx-php-fpm/run.sh
else
  echo "Unsupported web server type: $WEB_SERVER"
  exit 1
fi
