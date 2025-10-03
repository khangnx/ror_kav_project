#!/bin/bash

function start_server() {
  echo "🚀 Đang khởi động server dưới dạng daemon..."
  bin/rails server -d
  if [ $? -eq 0 ]; then
    echo "✅ Server đã được khởi động dưới dạng daemon."
  else
    echo "❌ Lỗi khi khởi động server."
  fi
}

function stop_server() {
  echo "🛑 Đang tìm và dừng tiến trình Puma..."
  PID=$(ps aux | grep puma | grep -v grep | awk '{print $2}')
  if [ -z "$PID" ]; then
    echo "⚠️ Không tìm thấy tiến trình Puma đang chạy."
  else
    kill -9 $PID
    echo "✅ Đã dừng tiến trình Puma với PID: $PID"
  fi
}

case "$1" in
  start)
    start_server
    ;;
  stop)
    stop_server
    ;;
  *)
    echo "Sử dụng: ./rails_daemon.sh {start|stop}"
    ;;
esac
