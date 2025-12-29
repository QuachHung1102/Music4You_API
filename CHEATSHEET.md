# 📌 Python Server Cheat Sheet

## 🚀 Chạy Server

```powershell
D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

## 🌐 URLs

- Docs: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc
- Songs API: http://localhost:8000/api/v1/songs

## 🔧 Lệnh Hữu Ích

```powershell
# Kích hoạt venv
.\.venv\Scripts\Activate

# Cài thư viện
pip install -r requirements.txt

# Reset database
Remove-Item store.db

# Lấy IP
ipconfig | Select-String "IPv4"

# Dừng server
Ctrl + C
```

## 📱 Mobile Connection

1. Lấy IP: `ipconfig | Select-String "IPv4"`
2. Update `axiosClient.ts`: `baseURL: 'http://[YOUR_IP]:8000/api/v1'`
3. Cùng WiFi với mobile

## 🐛 Fix Lỗi

| Lỗi | Giải pháp |
|-----|-----------|
| `python not recognized` | Dùng đường dẫn đầy đủ `.venv\Scripts\python.exe` |
| `port in use` | Đổi port: `--port 8001` |
| `module not found` | Chạy: `pip install -r requirements.txt` |
| `table not found` | Xóa `store.db` và chạy lại |

## 📄 Files

- [QUICK_START.md](./QUICK_START.md) - Hướng dẫn nhanh
- [SETUP_GUIDE.md](./SETUP_GUIDE.md) - Hướng dẫn chi tiết
- [README.md](./README.md) - Tổng quan
