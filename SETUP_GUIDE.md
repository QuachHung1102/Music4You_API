# 🚀 Hướng Dẫn Cài Đặt và Chạy Server Python FastAPI

## 📋 Mục Lục
- [Yêu cầu hệ thống](#yêu-cầu-hệ-thống)
- [Bước 1: Cài đặt Python](#bước-1-cài-đặt-python)
- [Bước 2: Thiết lập môi trường ảo (Virtual Environment)](#bước-2-thiết-lập-môi-trường-ảo)
- [Bước 3: Cài đặt thư viện](#bước-3-cài-đặt-thư-viện)
- [Bước 4: Chạy server](#bước-4-chạy-server)
- [Bước 5: Kiểm tra API](#bước-5-kiểm-tra-api)
- [Các lệnh quan trọng](#các-lệnh-quan-trọng)
- [Xử lý lỗi thường gặp](#xử-lý-lỗi-thường-gặp)

---

## 🎯 Yêu Cầu Hệ Thống

- **Windows 10/11** (bạn đang dùng)
- **Python 3.11 đến 3.13** (khuyến nghị Python 3.13)
  - ⚠️ **Lưu ý:** Python 3.14+ có thể gây lỗi vì các thư viện chưa hỗ trợ
- **PowerShell** hoặc **Command Prompt**
- Kết nối internet (để tải thư viện)

---

## 📦 Bước 1: Cài Đặt Python

### Kiểm tra Python đã được cài chưa
Mở **PowerShell** và gõ:
```powershell
python --version
```

**Nếu hiện ra:** `Python 3.x.x` → Bạn đã có Python, nhảy sang Bước 2  
**Nếu báo lỗi:** Cần cài đặt Python

### Cách cài Python mới
1. Tải Python từ: https://www.python.org/downloads/
2. Chạy file cài đặt
3. ⚠️ **QUAN TRỌNG:** Tick vào ô **"Add Python to PATH"**
4. Click **Install Now**
5. Khởi động lại PowerShell

---

## 🌐 Bước 2: Thiết Lập Môi Trường Ảo

Môi trường ảo giúp cô lập các thư viện của dự án này với các dự án Python khác.

### Mở terminal tại thư mục dự án
```powershell
cd d:\AS_Project\Music4You_API
```

### Tạo môi trường ảo (Virtual Environment)
```powershell
python -m venv .venv
```

**Giải thích:** 
- `python -m venv` = chạy module venv của Python
- `.venv` (cuối cùng) = tên thư mục môi trường ảo (chuẩn Python)

⚠️ **Lưu ý:** Nếu có nhiều phiên bản Python, dùng Python 3.13:
```powershell
"C:\Users\<username>\AppData\Local\Programs\Python\Python313\python.exe" -m venv .venv
```

### Kích hoạt môi trường ảo
```powershell
.\.venv\Scripts\Activate
```

**Bạn sẽ thấy:** `(.venv)` xuất hiện ở đầu dòng lệnh → Thành công! ✅

**Lưu ý:** 
- Nếu báo lỗi về **Execution Policy**, chạy lệnh sau với quyền Admin:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## 📚 Bước 3: Cài Đặt Thư Viện

Đảm bảo môi trường ảo đã được kích hoạt (có `(venv)` ở đầu dòng lệnh).

### Cài tất cả thư viện từ file requirements.txt
```powershell
pip install -r requirements.txt
```

**Giải thích:**
- `pip` = công cụ quản lý thư viện Python
- `-r requirements.txt` = đọc danh sách thư viện từ file và cài hết

**Quá trình này có thể mất 2-5 phút** ⏳

### Kiểm tra đã cài thành công chưa
```powershell
pip list
```
Bạn sẽ thấy danh sách các thư viện đã cài (fastapi, uvicorn, sqlalchemy, v.v.)

---

## 🚀 Bước 4: Chạy Server

### Chạy server FastAPI

**Cách 1: Chạy trực tiếp (Khuyến nghị)**
```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

**Cách 2: Kích hoạt venv trước**
```powershell
.\.venv\Scripts\Activate
python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

**Giải thích các tham số:**
- `main:app` = file `main.py` và biến `app` trong đó
- `--reload` = tự động restart khi code thay đổi (chỉ dùng khi dev)
- `--host 0.0.0.0` = cho phép truy cập từ các thiết bị khác trong mạng
- `--port 8000` = server chạy ở cổng 8000

**Thành công khi thấy:**
```
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
INFO:     Started reloader process
INFO:     Started server process
INFO:     Waiting for application startup.
INFO:     Application startup complete.
```

### Dừng server
Nhấn **Ctrl + C**

---

## 🧪 Bước 5: Kiểm Tra API

### Truy cập tài liệu API tự động
Sau khi server chạy, mở trình duyệt và vào:

1. **Swagger UI (giao diện đẹp):**
   ```
   http://localhost:8000/docs
   ```

2. **ReDoc (tài liệu chi tiết):**
   ```
   http://localhost:8000/redoc
   ```

### Test API đơn giản
Mở trình duyệt hoặc dùng Postman/Thunder Client:
```
http://localhost:8000/api/v1/songs
```

Nếu trả về JSON danh sách bài hát → **Server hoạt động hoàn hảo!** 🎉

---

## 🛠️ Các Lệnh Quan Trọng

### Mỗi lần bắt đầu làm việc:

**Cách nhanh (1 lệnh):**
```powershell
cd d:\AS_Project\Music4You_API
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

**Hoặc kích hoạt venv trước:**
```powershell
cd d:\AS_Project\Music4You_API      # Vào thư mục dự án
.\.venv\Scripts\Activate            # Kích hoạt môi trường ảo
python -m uvicorn main:app --reload  # Chạy server
```

### Cài thêm thư viện mới:
```powershell
pip install tên-thư-viện
```

### Cập nhật file requirements.txt sau khi cài thư viện mới:
```powershell
pip freeze > requirements.txt
```

### Tắt môi trường ảo:
```powershell
deactivate
```

### Xem log chi tiết hơn:
```powershell
uvicorn main:app --reload --log-level debug
```

---

## ❌ Xử Lý Lỗi Thường Gặp

### 1. **Lỗi: `python` không được nhận diện**
**Nguyên nhân:** Python chưa được thêm vào PATH  
**Giải pháp:** Cài lại Python và tick **"Add Python to PATH"**

### 2. **Lỗi: `cannot be loaded because running scripts is disabled`**
**Nguyên nhân:** Windows chặn script PowerShell  
**Giải pháp:** Chạy PowerShell với quyền Admin và gõ:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### 3. **Lỗi: `Module not found` khi chạy server**
**Nguyên nhân:** Chưa kích hoạt môi trường ảo hoặc chưa cài thư viện  
**Giải pháp:** 
```powershell
.\venv\Scripts\Activate
pip install -r requirements.txt
```

### 4. **Lỗi: `Address already in use` (port 8000 đã được dùng)**
**Giải pháp 1:** Đổi port khác:
```powershell
uvicorn main:app --reload --port 8001
```

**Giải pháp 2:** Tìm và tắt process đang dùng port 8000:
```powershell
netstat -ano | findstr :8000
taskkill /PID <PID_number> /F
```

### 5. **Lỗi Database: `table not found`**
**Giải pháp:** Reset database:
```powershell
# Xóa file database cũ
Remove-Item store.db -ErrorAction SilentlyContinue

# Chạy lại server để tạo database mới
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload
```

Hoặc dùng API reset:
```
POST http://localhost:8000/api/v1/reset-db
```

### 6. **Lỗi: `No matching distribution found` khi cài packages**
**Nguyên nhân:** Python version quá mới (3.14+), thư viện chưa có binary wheel  
**Giải pháp:** Dùng Python 3.13:
```powershell
# Xóa .venv cũ
Remove-Item .venv -Recurse -Force

# Tạo lại với Python 3.13
"C:\Users\<username>\AppData\Local\Programs\Python\Python313\python.exe" -m venv .venv

# Cài lại packages
.\.venv\Scripts\Activate
pip install -r requirements.txt
```

---

## 📱 Kết Nối Với React Native App

### Lấy địa chỉ IP máy tính
```powershell
ipconfig
```
Tìm dòng **IPv4 Address** (ví dụ: `192.168.1.100`)

### Cập nhật trong React Native app
File `apis/axiosClient.ts`:
```typescript
const axiosClient = axios.create({
  baseURL: 'http://192.168.1.100:8000/api/v1',  // Thay IP này
  // ...
});
```

### Chạy server cho mobile truy cập
```powershell
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

⚠️ **Lưu ý:** Máy tính và điện thoại phải cùng mạng WiFi!

---

## 📝 Cấu Trúc Dự Án

```
Music4You_API/
├── main.py                    # File chính khởi động server
├── database.py                # Cấu hình database
├── requirements.txt           # Danh sách thư viện
├── store.db                   # File database SQLite (tự tạo)
├── music_app_schema_with_data.sql  # Script tạo database
├── Routes/                    # Các endpoint API
│   ├── UserRoute.py          # API quản lý user
│   ├── SongRoute.py          # API quản lý bài hát
│   ├── LessonRoute.py        # API quản lý bài học
│   ├── ExerciseRoute.py      # API quản lý bài tập
│   ├── UserProgressRoute.py  # API theo dõi tiến độ
│   ├── PracticeRoomRoute.py  # API phòng luyện tập
│   └── ResetDBRoute.py       # API reset database
└── venv/                      # Môi trường ảo (không commit lên git)
```

---

## 🎓 Kiến Thức Cần Biết

### Python Virtual Environment (venv)
- **Là gì?** Môi trường cô lập để cài các thư viện cho riêng dự án
- **Tại sao cần?** Tránh xung đột giữa các dự án Python khác nhau
- **Khi nào dùng?** Luôn luôn! Mỗi dự án Python nên có venv riêng

### FastAPI
- **Là gì?** Framework Python để xây dựng API nhanh chóng
- **Đặc điểm:** Tự động tạo docs, hỗ trợ async, type checking

### Uvicorn
- **Là gì?** Web server để chạy FastAPI
- **So sánh:** Giống như Node.js server chạy React/Express

### SQLite
- **Là gì?** Database nhẹ, lưu trong 1 file
- **File:** `store.db` (tự động tạo khi chạy lần đầu)

---

## 🔗 Tài Liệu Tham Khảo

- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Python Official Docs](https://docs.python.org/3/)
- [SQLAlchemy Tutorial](https://docs.sqlalchemy.org/en/20/)
- [Uvicorn Documentation](https://www.uvicorn.org/)

---

## ✅ Checklist Bắt Đầu

- [ ] Python đã được cài và thêm vào PATH
- [ ] Đã tạo và kích hoạt môi trường ảo (`venv`)
- [ ] Đã cài tất cả thư viện từ `requirements.txt`
- [ ] Server chạy được ở `http://localhost:8000`
- [ ] Truy cập được `/docs` để xem API documentation
- [ ] Test API thành công (ví dụ: GET `/api/v1/songs`)

---

**🎉 Chúc bạn code vui vẻ! Nếu gặp vấn đề gì, đọc lại phần "Xử lý lỗi thường gặp".**
