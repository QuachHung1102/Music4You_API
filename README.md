# 🎵 Music4You API Server

FastAPI-based REST API server cho ứng dụng Music4You mobile app.

## 📚 Tài Liệu

- **[⚡ QUICK START](./QUICK_START.md)** ← Chạy server ngay 1 lệnh!
- **[📖 Hướng dẫn chi tiết](./SETUP_GUIDE.md)** ← Đọc file này nếu bạn mới học Python!
- **[📌 Cheat Sheet](./CHEATSHEET.md)** ← Tra cứu lệnh nhanh
- **[📝 Changelog](./CHANGELOG.md)** ← Lịch sử cập nhật
- **API Documentation:** http://localhost:8000/docs (khi server đang chạy)

## 🚀 Quick Start

### Cài đặt
```powershell
# Tạo môi trường ảo
python -m venv .venv

# Kích hoạt (Windows PowerShell)
.\.venv\Scripts\Activate

# Cài thư viện
pip install -r requirements.txt
```

### Chạy Server

**Cách 1 (Khuyến nghị - Đơn giản nhất):**
```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

**Cách 2 (Kích hoạt venv trước):**
```powershell
.\.venv\Scripts\Activate
python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

Server sẽ chạy tại: http://localhost:8000

## 🛠️ Tech Stack

- **FastAPI** - Modern Python web framework
- **SQLAlchemy 2.0** - ORM với async support
- **SQLite** - Lightweight database
- **Uvicorn** - ASGI server
- **Pydantic 2.x** - Data validation

## 📁 API Endpoints

### Users
- `GET /api/v1/users` - Lấy danh sách users
- `GET /api/v1/users/{id}` - Lấy thông tin user
- `GET /api/v1/users/by-email/{email}` - Tìm user bằng email
- `POST /api/v1/users` - Tạo user mới
- `PUT /api/v1/users/{id}` - Cập nhật user

### Songs
- `GET /api/v1/songs` - Lấy danh sách bài hát
- `GET /api/v1/songs/{id}` - Lấy thông tin bài hát
- `POST /api/v1/songs` - Thêm bài hát mới
- `PUT /api/v1/songs/{id}` - Cập nhật bài hát
- `DELETE /api/v1/songs/{id}` - Xóa bài hát

### Lessons
- `GET /api/v1/lessons` - Lấy danh sách bài học
- `GET /api/v1/lessons/{id}` - Lấy thông tin bài học
- `POST /api/v1/lessons` - Tạo bài học mới
- `PUT /api/v1/lessons/{id}` - Cập nhật bài học
- `DELETE /api/v1/lessons/{id}` - Xóa bài học

### Exercises
- `GET /api/v1/exercises` - Lấy danh sách bài tập
- `GET /api/v1/exercises/by-lesson/{lesson_id}` - Lấy bài tập theo bài học
- `POST /api/v1/exercises` - Tạo bài tập mới
- `PUT /api/v1/exercises/{id}` - Cập nhật bài tập
- `DELETE /api/v1/exercises/{id}` - Xóa bài tập

### User Progress
- `GET /api/v1/user-progress` - Lấy toàn bộ tiến độ
- `GET /api/v1/user-progress/by-user/{user_id}` - Lấy tiến độ của user
- `GET /api/v1/user-progress/by-user-lesson/{user_id}/{lesson_id}` - Lấy tiến độ cụ thể
- `POST /api/v1/user-progress` - Tạo tiến độ mới
- `PUT /api/v1/user-progress/{id}` - Cập nhật tiến độ

### Practice Rooms
- `GET /api/v1/practice-rooms` - Lấy danh sách phòng luyện tập
- `GET /api/v1/practice-rooms/by-user/{user_id}` - Lấy phòng của user
- `GET /api/v1/practice-rooms/by-instrument/{instrument}` - Lọc theo nhạc cụ
- `POST /api/v1/practice-rooms` - Tạo phòng mới
- `PUT /api/v1/practice-rooms/{id}` - Cập nhật phòng
- `DELETE /api/v1/practice-rooms/{id}` - Xóa phòng

### Database
- `POST /api/v1/reset-db` - Reset database về dữ liệu mặc định

## 🔧 Development

### Các lệnh hữu ích
```powershell
# Kích hoạt venv
.\.venv\Scripts\Activate

# Chạy server với auto-reload (sau khi kích hoạt venv)
python -m uvicorn main:app --reload

# Chạy với host 0.0.0.0 (cho mobile truy cập)
python -m uvicorn main:app --reload --host 0.0.0.0

# Chạy với port khác
python -m uvicorn main:app --reload --port 8001

# Hoặc chạy trực tiếp không cần kích hoạt venv
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload

# Cập nhật requirements.txt
pip freeze > requirements.txt

# Tắt venv
deactivate
```

### Cấu trúc database
Database được tạo tự động khi chạy server lần đầu. Nếu muốn reset:
```powershell
Remove-Item store.db
uvicorn main:app --reload
```

## 🐛 Troubleshooting

Xem chi tiết trong [SETUP_GUIDE.md](./SETUP_GUIDE.md) phần "Xử lý lỗi thường gặp".

## 📝 Notes

- Database file: `store.db` (SQLite)
- Default port: 8000
- CORS: Đã enable cho tất cả origins (development only)
- Code đã được cập nhật để tương thích với Pydantic 2.x

## 🔗 Related Projects

- **Mobile App:** [Music4You_mobile](../Music4You_mobile)

## 📄 License

Private project - Music4You App
