# SmartFarm Monitor
```
Các bước  để chạy script:
- Bước 1: di chuyển đến thư mục .\scripts.
- Bước 2: mở powershell tại thư mục scripts.
- Bước 3: sử dụng lệnh get-childitem . để kiểm tra xem đã đứng đúng thư mục scripts chưa.
- Bước 4: sử dụng lệnh .\auto_report.ps1 sau đó nhấn enter để script chạy.
- Bước 5: sau khi chạy scripts xong thì vào thư mục backup và kiểm tra file bao-cao-su-co.txt sẽ thấy đã in ra sự cố đang gặp phải.
```
## Check list kiểm tra thiết bị
- [x] Kiểm tra nguồn điện
- [ ] Kiểm tra kết nối của thiết bị
- [ ] Chạy scripts và đọc báo cáo sự cố
## Bảng thông số phần cứng
|tên thiết bị|đơn giá|loại storage
|--|--|--|
|Raspberry Pi 4 Model B|1450000|SSD
|Intel NUC i3|6200000|SSD
|Orange Pi 5|2300000|SSD
## Mục phân tích hệ thống
-  xác định **Input – Process – Output** của chức năng lọc log: 
- - Input: đưa file log-he-thong.log vào
- - Process: đọc từng dòng và lọc các dòng có chứa lỗi CRITICAL và ERROR 
- - Output: in ra file bao-cao-su-co.txt những dòng có lỗi CRITICAL và ERROR và đếm tổng số sự cố
## Phân loại
- phân loại 4 phát biểu sau vào đúng tầng **DIKW** (Data, Information, Knowledge, Wisdom):

    - (a) “Quyết định thay modem trạm sensor-03 trước thứ Sáu.”

    - (b) “2026-10-12 08:15:01 \[ERROR\] sensor-03 Connection TIMEOUT after 30s”

    - (c) “Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ trạm sensor-03.”

    - (d) “Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten.”

- **Data:** (b) “2026-10-12 08:15:01 \[ERROR\] sensor-03 Connection TIMEOUT after 30s”
- **Information:** (c) “Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ trạm sensor-03.”
- **Knowledge:** (d) “Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten.”
- **Wisdom:** (a) “Quyết định thay modem trạm sensor-03 trước thứ Sáu.”

