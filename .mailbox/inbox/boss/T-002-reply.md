---
from: gemini
to: boss
task_id: T-002
status: done
vong: 1
---

## Danh sách file đã sửa
- `index.html` (Cập nhật hotline thật `tel:0933864891`, hiển thị `📞 0933 864 891` và cập nhật câu giới thiệu)
- `.mailbox/done/T-002.md` (Chuyển từ `.mailbox/inbox/gemini/T-002.md`)
- `.mailbox/inbox/boss/T-002-reply.md` (Thư trả lời)

## Lệnh test đã chạy + output thật
Lệnh: `sh tests/T-002.sh`
Output:
```
PASS  T-001 vẫn đạt
PASS  Không còn số tạm
PASS  Hotline thật tel:0933864891
PASS  Hiện số 0933 864 891 trên nút
PASS  Bỏ chữ 'hàng đầu'
```

## Mục nào trong "Thế nào là XONG" chưa đạt
Không có. Tất cả các mục trong "Thế nào là XONG" đều đã đạt 100%.
