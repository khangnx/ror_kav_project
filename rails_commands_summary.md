# 🧾 Bảng Tổng Hợp Các Lệnh Ruby on Rails

## 🛠 Lệnh khởi tạo và cấu hình ứng dụng
| Lệnh | Mô tả |
|------|------|
| `rails new app_name` | Tạo ứng dụng Rails mới |
| `rails new app_name --database=postgresql` | Tạo ứng dụng với cấu hình PostgreSQL |
| `rails new app_name --skip-active-storage` | Bỏ qua một số thành phần khi tạo app |

## 🚀 Lệnh chạy ứng dụng
| Lệnh | Mô tả |
|------|------|
| `bin/rails server` hoặc `bin/rails s` | Khởi chạy server (mặc định là Puma) |
| `-p` | Chạy trên cổng khác |
| `-e` | Chạy với môi trường khác (production, staging...) |
| `-b` | Bind IP cụ thể |
| `-d` | Chạy server dưới dạng daemon |

## 🔧 Lệnh tạo mã nguồn (generate)
| Lệnh | Mô tả |
|------|------|
| `bin/rails generate` hoặc `bin/rails g` | Tạo các thành phần như controller, model, scaffold, migration... |
| `rails generate controller Greetings hello` | Tạo controller với action hello |
| `rails generate model User name:string age:integer` | Tạo model User với các thuộc tính |
| `rails generate scaffold Post title:string body:text` | Tạo scaffold cho Post |

## 🧹 Lệnh xoá mã nguồn (destroy)
| Lệnh | Mô tả |
|------|------|
| `bin/rails destroy` hoặc `bin/rails d` | Xoá các thành phần đã tạo bằng generate |

## 🧪 Lệnh kiểm thử
| Lệnh | Mô tả |
|------|------|
| `bin/rails test` | Chạy toàn bộ test |
| `bin/rails test:models` | Chạy test cho models |
| `bin/rails test:controllers` | Chạy test cho controllers |
| `bin/rails test:integration` | Chạy test tích hợp |

## 🧬 Lệnh tương tác với ứng dụng
| Lệnh | Mô tả |
|------|------|
| `bin/rails console` hoặc `bin/rails c` | Mở IRB console với môi trường Rails |
| `bin/rails console --sandbox` | Mọi thay đổi sẽ bị rollback khi thoát |
| `bin/rails runner 'RubyCode'` hoặc `bin/rails r` | Chạy đoạn mã Ruby trong môi trường Rails |

## 🗃️ Lệnh quản lý cơ sở dữ liệu
| Lệnh | Mô tả |
|------|------|
| `bin/rails db:create` | Tạo database |
| `bin/rails db:migrate` | Chạy migration |
| `bin/rails db:rollback` | Rollback migration |
| `bin/rails db:seed` | Seed dữ liệu |
| `bin/rails db:schema:dump` | Tạo file schema |
| `bin/rails db:schema:load` | Load schema vào database |
| `bin/rails db:version` | Xem version hiện tại của schema |
| `bin/rails dbconsole` hoặc `bin/rails db` | Mở console database |

## 📦 Lệnh quản lý tài sản (assets)
| Lệnh | Mô tả |
|------|------|
| `bin/rails assets:precompile` | Biên dịch assets |
| `bin/rails assets:clean` | Xoá assets cũ |
| `bin/rails assets:clobber` | Xoá toàn bộ assets đã biên dịch |

## 📋 Lệnh thông tin và trợ giúp
| Lệnh | Mô tả |
|------|------|
| `bin/rails about` | Hiển thị thông tin về môi trường Rails hiện tại |
| `rails --help` | Hiển thị danh sách các lệnh có sẵn |

# Tổng hợp câu lệnh Ruby on Rails

## 🛠 Thông tin chung về ứng dụng

| Lệnh | Mô tả |
|------|------|
| `rails -v` | Kiểm tra phiên bản Rails đang dùng |
| `ruby -v` | Kiểm tra phiên bản Ruby |
| `rails about` | Hiển thị thông tin tổng quan về app: môi trường, phiên bản Rails, database adapter... |
| `rails info` | Tương tự như `rails about`, nhưng có thể chi tiết hơn tùy phiên bản Rails |
| `rails credentials:show` | Hiển thị thông tin mã hóa trong `credentials.yml.enc` |
| `rails routes` | Hiển thị tất cả các route của ứng dụng |
| `rails middleware` | Hiển thị danh sách middleware đang được sử dụng |
| `rails stats` | Thống kê số dòng code trong app (models, controllers, views...) |

---

## 📁 Cấu trúc thư mục và file

| Lệnh | Mô tả |
|------|------|
| `tree` | Hiển thị cấu trúc thư mục (cần cài đặt `tree`) |
| `ls -la` | Liệt kê file và thư mục trong thư mục hiện tại |
| `cat config/application.rb` | Xem cấu hình chính của ứng dụng |
| `cat config/environment.rb` | Xem cấu hình môi trường |

---

## 🧪 Kiểm tra môi trường và cấu hình

| Lệnh | Mô tả |
|------|------|
| `rails console` | Mở console để tương tác trực tiếp với app |
| `RAILS_ENV=production rails about` | Kiểm tra thông tin app trong môi trường production |
| `rails db:environment:set RAILS_ENV=development` | Thiết lập môi trường cho database |

---

## 🔍 Thông tin Gem và phụ thuộc

| Lệnh | Mô tả |
|------|------|
| `bundle list` | Liệt kê tất cả gem đang được sử dụng |
| `bundle show GEM_NAME` | Hiển thị đường dẫn cài đặt của gem |
| `bundle outdated` | Kiểm tra các gem đã lỗi thời |
| `bundle info GEM_NAME` | Thông tin chi tiết về gem |

