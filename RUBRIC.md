# Bảng chấm điểm (Boss dùng)

| Tiêu chí | Điểm |
|---|---|
| Đạt đủ mục "Thế nào là XONG" | 4 |
| Boss tự chạy lại test: pass hết | 2 |
| Đúng phạm vi, không sửa lan | 2 |
| Build + lint sạch | 1 |
| Bấm thử luồng chính trên browser | 1 |

**Luật cứng:** trượt bất kỳ mục nào trong "Thế nào là XONG" → tối đa 5 điểm.

- ≥ 8: trình chủ duyệt
- < 8: trả về Worker kèm lỗi cụ thể
- Quá 3 vòng: dừng, báo chủ

## Mẫu ghi điểm (`.mailbox/reports/T-xxx.md`)
```
Task: T-xxx | Vòng: 1
XONG: 4/4 | Test: 2/2 | Phạm vi: 2/2 | Build: 1/1 | Browser: 1/1
Tổng: 10/10 → TRÌNH DUYỆT
Lỗi: —
Rủi ro: —
```
