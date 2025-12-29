# ⚡ Quick Start - Chạy Server Nhanh

## 🚀 Chạy Server (1 lệnh duy nhất)

```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

Copy lệnh trên, paste vào PowerShell và Enter! 🎯

---

## 🌐 Truy cập API

Sau khi server chạy:

- **API Docs (Swagger):** http://localhost:8000/docs
- **ReDoc:** http://localhost:8000/redoc
- **Test API:** http://localhost:8000/api/v1/songs

---

## 🔧 Setup Lần Đầu

Nếu chưa setup, chạy các lệnh sau **1 LẦN DUY NHẤT**:

```powershell
# 1. Vào thư mục dự án
cd D:\AS_Project\Music4You_API

# 2. Tạo môi trường ảo (nếu chưa có .venv)
python -m venv .venv

# 3. Kích hoạt môi trường ảo
.\.venv\Scripts\Activate

# 4. Cài thư viện
pip install -r requirements.txt
```

---

## 📝 Lệnh Thường Dùng

### Dừng Server
Nhấn **Ctrl + C** trong terminal đang chạy server

### Xem danh sách thư viện đã cài
```powershell
.\.venv\Scripts\Activate
pip list
```

### Reset Database
```powershell
Remove-Item store.db
# Sau đó chạy lại server, database sẽ được tạo mới
```

### Kích hoạt Virtual Environment
```powershell
.\.venv\Scripts\Activate
```
Sau khi thấy `(.venv)` ở đầu dòng lệnh, có thể dùng lệnh ngắn:
```powershell
python -m uvicorn main:app --reload
```

---

## 🐛 Lỗi Thường Gặp

### Lỗi: "python is not recognized"
**Giải pháp:** Dùng đường dẫn đầy đủ:
```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload
```

### Lỗi: "port 8000 already in use"
**Giải pháp:** Đổi port khác:
```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --port 8001
```

### Lỗi: "No module named 'uvicorn'"
**Giải pháp:** Cài lại thư viện:
```powershell
.\.venv\Scripts\Activate
pip install -r requirements.txt
```

---

## 📱 Kết Nối Với Mobile App

### 1. Lấy IP máy tính
```powershell
ipconfig | Select-String "IPv4"
```
Ví dụ: `192.168.1.100`

### 2. Cập nhật trong React Native
File `Music4You_mobile/apis/axiosClient.ts`:
```typescript
baseURL: 'http://192.168.1.100:8000/api/v1'
```

### 3. Chạy server với host 0.0.0.0
```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

⚠️ **Lưu ý:** Máy tính và điện thoại phải cùng mạng WiFi!

---

## 📚 Tài Liệu Chi Tiết

- **Setup đầy đủ:** [SETUP_GUIDE.md](./SETUP_GUIDE.md)
- **Tổng quan dự án:** [README.md](./README.md)
- **Changelog:** [CHANGELOG.md](./CHANGELOG.md)

---

**💡 Tip:** Bookmark trang này để truy cập nhanh mỗi khi cần chạy server!
