#!/bin/sh

# Set the Minio alias
/usr/bin/mc alias set myminio http://minio:9000 minioadmin minioadmin

# Upload logs to Minio
/usr/bin/mc cp /var/log/nginx/* myminio/nginx-logs/
