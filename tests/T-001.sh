#!/bin/sh
# Test nghiệm thu T-001 — Boss viết, Worker KHÔNG được sửa file này.
f=index.html
fail=0
check() { if eval "$2"; then echo "PASS  $1"; else echo "FAIL  $1"; fail=1; fi; }
check "Có file index.html"            "[ -f $f ]"
check "Tiêu đề là Kim Cương Spa"      "grep -q '<title>Kim Cương Spa</title>' $f"
check "Có số hotline dạng tel:"       "grep -q 'href=\"tel:' $f"
check "Có địa chỉ 441 Đại lộ Bình Dương" "grep -q '441 Đại lộ Bình Dương' $f"
check "Có thẻ viewport cho mobile"    "grep -q 'name=\"viewport\"' $f"
exit $fail
