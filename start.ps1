# Quick Start Script for Windows PowerShell
# Đây là script tự động để setup và chạy server

Write-Host "🎵 Music4You API - Quick Setup Script" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

# Kiểm tra Python
Write-Host "📦 Kiểm tra Python..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Đã tìm thấy: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Không tìm thấy Python! Vui lòng cài Python từ https://www.python.org/" -ForegroundColor Red
    exit 1
}

# Kiểm tra venv
Write-Host ""
Write-Host "🌐 Kiểm tra môi trường ảo..." -ForegroundColor Yellow
if (Test-Path "venv") {
    Write-Host "✅ Môi trường ảo đã tồn tại" -ForegroundColor Green
} else {
    Write-Host "⚙️  Đang tạo môi trường ảo..." -ForegroundColor Yellow
    python -m venv venv
    Write-Host "✅ Đã tạo môi trường ảo" -ForegroundColor Green
}

# Kích hoạt venv và cài thư viện
Write-Host ""
Write-Host "📚 Cài đặt thư viện..." -ForegroundColor Yellow
Write-Host "⏳ Quá trình này có thể mất 2-5 phút..." -ForegroundColor Gray

# Note: Cannot directly activate venv in script, user must do it manually
Write-Host ""
Write-Host "⚠️  Bạn cần chạy các lệnh sau:" -ForegroundColor Yellow
Write-Host ""
Write-Host "   .\.venv\Scripts\Activate" -ForegroundColor White
Write-Host "   pip install -r requirements.txt" -ForegroundColor White
Write-Host "   python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000" -ForegroundColor White
Write-Host ""
Write-Host "📌 Hoặc chạy trực tiếp 1 lệnh:" -ForegroundColor Cyan
Write-Host "   D:\AS_Project\Music4You_API\.venv\Scripts\python.exe -m uvicorn main:app --reload --host 0.0.0.0 --port 8000" -ForegroundColor White
Write-Host ""
Write-Host "📖 Hoặc đọc hướng dẫn chi tiết trong file SETUP_GUIDE.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "🚀 Sau khi server chạy, truy cập: http://localhost:8000/docs" -ForegroundColor Green
