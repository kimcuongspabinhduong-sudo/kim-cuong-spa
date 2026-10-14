# Bộ setup AI Vibecode: 1 Boss + Hộp thư Agent

**Claude nghĩ, Gemini làm, Muse chạy, và không ai được tự chấm bài của mình.**

## Cài đặt (3 bước)
1. Copy toàn bộ thư mục này (kể cả `.mailbox/` đang bị ẩn) vào gốc project của bạn.
2. Mở Claude Code ở thư mục project. Claude tự đọc `CLAUDE.md` và nhận vai Boss.
3. Cài Gemini CLI (`npm i -g @google/gemini-cli`, đăng nhập bằng tài khoản Google AI Pro). Gemini đọc `GEMINI.md`, file này trỏ sang `AGENTS.md`.

## Dùng
Chỉ cần nói với Claude việc cần làm. Claude sẽ:
viết spec → gửi thư cho Gemini → gọi `gemini -p` → chấm theo `RUBRIC.md` → trình bạn 1 tin.

## Gắn Muse AI
Kết nối bot Muse với repo, rồi đặt routine cho nó: mỗi sáng đọc `.mailbox/inbox/muse/`, chạy việc định kỳ, ghi báo cáo vào `.mailbox/inbox/boss/`.

## Dùng trên điện thoại
Xem `MOBILE.md`: hộp thư đặt trên GitHub, Worker là Jules (Gemini) tự nhận việc từ issue.

## Cấu trúc
```
CLAUDE.md      luật Boss
AGENTS.md      luật Worker
GEMINI.md      trỏ Gemini sang AGENTS.md
RUBRIC.md      bảng chấm điểm
MOBILE.md      bản điều khiển bằng điện thoại
.mailbox/
  inbox/boss|gemini|muse/   thư đến từng agent
  done/                    thư đã xử lý
  reports/                 bảng điểm từng task
```
