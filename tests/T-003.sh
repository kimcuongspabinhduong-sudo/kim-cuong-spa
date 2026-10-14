#!/bin/sh
# Test nghiệm thu T-003 — Boss viết, Worker KHÔNG được sửa file này.
f=index.html; fail=0
check() { if eval "$2"; then echo "PASS  $1"; else echo "FAIL  $1"; fail=1; fi; }
check "T-002 vẫn đạt"           "sh tests/T-002.sh >/dev/null"
check "Có tiêu đề Bảng giá"     "grep -q 'Bảng giá' $f"
for row in "Aroma|75|390" "Thái|60|450" "Trị liệu thảo dược|60|490" "Cổ vai gáy|60|350" "Foot|60|390" "Gội dưỡng sinh|60|190"; do
  n=${row%%|*}; r=${row#*|}; m=${r%%|*}; p=${r#*|}
  check "$n – $m phút – ${p}.000đ" "grep -q '$n' $f && grep -q '${m} phút' $f && grep -q '${p}.000đ' $f"
done
check "Bảng giá dùng thẻ <table>" "grep -q '<table' $f"
exit $fail
