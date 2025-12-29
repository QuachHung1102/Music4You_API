# Script kiểm tra và cập nhật thư viện Python
# Check for outdated packages

Write-Host "🔍 Kiểm tra thư viện cần cập nhật..." -ForegroundColor Cyan
Write-Host ""

# Kiểm tra venv có được kích hoạt chưa
if ($env:VIRTUAL_ENV) {
    Write-Host "✅ Môi trường ảo đã kích hoạt: $env:VIRTUAL_ENV" -ForegroundColor Green
} else {
    Write-Host "⚠️  Môi trường ảo chưa được kích hoạt!" -ForegroundColor Yellow
    Write-Host "   Chạy lệnh: .\venv\Scripts\Activate" -ForegroundColor White
    Write-Host ""
}

Write-Host "📋 Danh sách thư viện đã cài đặt:" -ForegroundColor Yellow
pip list

Write-Host ""
Write-Host "🔄 Kiểm tra thư viện cũ (outdated)..." -ForegroundColor Yellow
pip list --outdated

Write-Host ""
Write-Host "💡 Để cập nhật một thư viện cụ thể:" -ForegroundColor Cyan
Write-Host "   pip install --upgrade tên-thư-viện" -ForegroundColor White
Write-Host ""
Write-Host "💡 Để cập nhật TẤT CẢ thư viện (không khuyến nghị):" -ForegroundColor Cyan
Write-Host "   pip install --upgrade -r requirements.txt" -ForegroundColor White
Write-Host ""
Write-Host "⚠️  Lưu ý: Cập nhật có thể gây lỗi tương thích. Backup trước khi cập nhật!" -ForegroundColor Red
