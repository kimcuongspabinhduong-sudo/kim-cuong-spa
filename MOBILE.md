# Bản MOBILE: điều khiển cả đội bằng điện thoại

Hộp thư `.mailbox/` nằm trên GitHub repo này. Claude, Jules (Gemini) và Muse đều chạy trên cloud và cùng đọc/ghi repo. Máy nhà tắt cũng không sao.

## Chuẩn bị (làm 1 lần)
1. **Claude**: trong app Claude, mở phiên Claude Code trên cloud và gắn repo này.
2. **Jules**: vào jules.google.com, đăng nhập bằng tài khoản Google AI Pro, kết nối GitHub và chọn repo này.
3. **Muse**: cho bot Muse quyền đọc/ghi repo.

## Luồng 1 task: bạn chỉ nói 1 câu
1. **Bạn → Claude:** "Thêm nút in bill A80."
2. **Claude:** viết spec + test nghiệm thu, gửi thư, tạo issue gắn nhãn `jules`.
3. **Jules:** tự nhận issue, làm, rồi mở Pull Request.
4. **Claude:** chấm PR theo RUBRIC.md.
   - Chưa đạt: comment lỗi lên PR. Jules tự sửa và đẩy lại.
   - Đạt: trình bạn 1 tin.
5. **Bạn:** bấm Merge.

## Lưu ý
- Jules không bao giờ tự merge. Quyền merge luôn là của bạn.
- Claude chỉ thấy PR mới khi bạn nhắn ("chấm PR mới"), hoặc khi bạn cho Muse một routine báo Claude mỗi lần có PR.
