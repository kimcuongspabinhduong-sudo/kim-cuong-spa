# Bản MOBILE: điều khiển cả đội bằng điện thoại

Ý tưởng: **hộp thư `.mailbox/` nằm trên GitHub repo** thay vì trên máy tính.
Claude, Codex và Muse đều chạy trên cloud và cùng đọc/ghi một repo. Máy nhà tắt cũng không sao.

## Chuẩn bị (làm 1 lần)
1. Tạo repo GitHub (để private) và đẩy cả bộ này lên gốc repo.
2. **Claude**: trong app Claude trên điện thoại, mở phiên Claude Code trên cloud rồi gắn repo đó.
3. **Codex**: trong app ChatGPT, mục Codex, kết nối GitHub rồi chọn repo đó.
4. **Muse**: cho bot Muse quyền đọc/ghi repo.

## Luồng 1 task trên điện thoại
1. **Bạn → Claude:** "Thêm nút in bill A80."
2. **Claude:** viết spec, tạo thư `.mailbox/inbox/codex/T-xxx.md`, rồi commit + push.
3. **Bạn → Codex** (app ChatGPT, chỉ dán 1 câu cố định):
   `Đọc thư mới nhất trong .mailbox/inbox/codex/ và làm theo AGENTS.md`
4. **Codex:** làm việc trên cloud và tạo Pull Request.
5. **Bạn → Claude:** "Chấm PR mới."
   Claude checkout PR, tự chạy lại test, chấm theo RUBRIC.md. Đạt thì trình bạn 1 tin, chưa đạt thì ghi thư trả lại cho codex.
6. **Bạn:** bấm Merge.

## Đánh đổi so với bản máy tính
- Bạn phải tự bấm "chuyển việc" sang Codex (bước 3), vì bot cloud của 2 hãng không gọi trực tiếp được cho nhau.
- **Cách bỏ được bước 3:** cho Muse một routine chạy mỗi 15 phút. Routine này kiểm tra `.mailbox/inbox/codex/`, có thư mới thì chạy Codex CLI trên máy cloud của Muse. Muse chỉ đóng vai người đưa thư, phần code vẫn do Codex làm.
- Theo dõi Codex chạy trực tiếp từ app ChatGPT hiện mới hỗ trợ máy Mac làm máy chủ. Vì vậy dùng repo GitHub làm hộp thư là cách chạy được trên mọi máy.
