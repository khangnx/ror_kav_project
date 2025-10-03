# Hướng dẫn Deploy Ruby on Rails với Capistrano và Puma

## ✅ 1. Cài đặt các gem cần thiết

## Thêm vào Gemfile:

```
group :development do
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma', require: false
end

```
## Sau đó chạy:
```
bundle install
bundle exec cap install
```
## Lệnh trên sẽ tạo các file:
```
Capfile
config/deploy.rb
config/deploy/production.rb
config/deploy/staging.rb
```
## ⚙️ 2. Cấu hình Capfile
```
require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
require 'capistrano3/puma'
```
## 📝 3. Cấu hình deploy.rb
```
lock "~> 3.18.0"

set :application, "ten_app"
set :repo_url, "git@github.com:ten_user/ten_app.git"
set :deploy_to, "/var/www/ten_app"

set :rbenv_type, :user
set :rbenv_ruby, '3.2.2'

append :linked_files, "config/master.key"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :puma_threads, [4, 16]
set :puma_workers, 2

set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{shared_path}/log/puma.access.log"
set :puma_error_log, "#{shared_path}/log/puma.error.log"
set :puma_preload_app, true
set :puma_init_active_record, true
```
## 🌍4. Cấu hình production.rb
```
server "your.server.ip", user: "deploy", roles: %w{app db web}
set :branch, "main"
```
## 🚀 5. Deploy ứng dụng
```
bundle exec cap production deploy
```
## 🔄 6. Các lệnh quản lý Puma
```
cap production puma:start
cap production puma:stop
cap production puma:restart
cap production puma:status
```

## file deploy.sh:
```
#!/bin/bash

APP_NAME="ten_app"
REPO_URL="git@github.com:ten_user/ten_app.git"
DEPLOY_DIR="/var/www/$APP_NAME"
BRANCH="main"
USER="deploy"
SERVER="your.server.ip"

echo "🔄 Bắt đầu deploy ứng dụng $APP_NAME đến $SERVER..."

ssh $USER@$SERVER << EOF
  echo "📁 Vào thư mục ứng dụng"
  cd $DEPLOY_DIR

  echo "📥 Pull code từ Git"
  git pull origin $BRANCH

  echo "📦 Cài đặt gem"
  bundle install

  echo "🗄️ Migrate database"
  RAILS_ENV=production bundle exec rails db:migrate

  echo "🎨 Precompile assets"
  RAILS_ENV=production bundle exec rails assets:precompile

  echo "🚀 Restart Puma"
  bundle exec pumactl -S tmp/pids/puma.state restart

  echo "✅ Deploy hoàn tất!"
```