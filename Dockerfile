FROM ruby:3.4

# Cài đặt các gói cần thiết
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 libvips postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Cài đặt Redis client nếu cần
# RUN apt-get install -y redis-tools

# Tạo thư mục ứng dụng
WORKDIR /app

# Sao chép Gemfile và Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Cài đặt bundler và các gem
RUN gem install bundler && bundle install

# Sao chép toàn bộ mã nguồn
COPY . .

# Cấu hình cổng
EXPOSE 3000

# Lệnh khởi chạy mặc định
CMD ["rails", "server", "-b", "0.0.0.0"]

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]