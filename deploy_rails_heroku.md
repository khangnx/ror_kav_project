# Hướng dẫn triển khai ứng dụng Ruby on Rails lên Heroku

## 1. Yêu cầu hệ thống
- Ruby (phiên bản phù hợp với ứng dụng)
- Rails
- Git
- Heroku CLI
- PostgreSQL (nếu sử dụng cơ sở dữ liệu này)

## 2. Chuẩn bị ứng dụng
### Khởi tạo ứng dụng Rails
- Tạo ứng dụng mới bằng lệnh `rails new ten_ung_dung -d postgresql`
- Cập nhật `Gemfile` để sử dụng `pg` thay vì `sqlite3`
- Chạy `bundle install`
- Khởi tạo cơ sở dữ liệu bằng `rails db:create`

## 3. Cấu hình Heroku
- Đăng nhập Heroku bằng lệnh `heroku login`
- Tạo ứng dụng Heroku bằng `heroku create ten_ung_dung`
- Cập nhật `config/database.yml` để phù hợp với môi trường Heroku
- Thêm file `Procfile` với nội dung: `web: bundle exec rails server -p $PORT`
- Đảm bảo ứng dụng có `rails_12factor` trong `Gemfile` nếu dùng Rails 4

## 4. Triển khai
- Khởi tạo Git repo nếu chưa có: `git init`
- Commit toàn bộ mã nguồn: `git add . && git commit -m "Initial commit"`
- Đẩy mã lên Heroku: `git push heroku master`
- Chạy migrate trên Heroku: `heroku run rails db:migrate`

## 5. Kiểm tra ứng dụng
- Mở ứng dụng bằng lệnh `heroku open`
- Kiểm tra logs nếu có lỗi: `heroku logs --tail`

## 6. Kết luận
- Bạn đã triển khai thành công ứng dụng Ruby on Rails lên Heroku
- Có thể tiếp tục phát triển và cập nhật ứng dụng bằng cách push lên Heroku
