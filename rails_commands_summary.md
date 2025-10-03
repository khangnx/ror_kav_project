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
