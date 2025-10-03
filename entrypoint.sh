#!/bin/bash
set -e

# Remove server.pid nếu tồn tại
rm -f /app/tmp/pids/server.pid

# Chạy lệnh được truyền vào Dockerfile
exec "$@"