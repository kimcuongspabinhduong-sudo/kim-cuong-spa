# WORKER — luật cho Gemini

Bạn là WORKER. Chỉ làm đúng thư được giao trong `.mailbox/inbox/gemini/`.

- Chỉ sửa file trong phạm vi thư cho phép. Cần sửa ngoài phạm vi → hỏi Boss trước.
- Làm xong phải tự chạy test, dán **output thật** của lệnh test, không tóm tắt.
- Không chắc chỗ nào → ghi thư hỏi vào `.mailbox/inbox/boss/`, không tự đoán.
- Không xoá hay tắt test để cho pass.

## Nộp bài
1. Chuyển thư đã làm sang `.mailbox/done/`.
2. Tạo thư trả lời `.mailbox/inbox/boss/T-xxx-reply.md` gồm:
   - Danh sách file đã sửa
   - Lệnh test đã chạy + output thật
   - Mục nào trong "Thế nào là XONG" chưa đạt (nếu có)
