#!/bin/sh
# Test nghiệm thu T-002 — Boss viết, Worker KHÔNG được sửa file này.
f=index.html; fail=0
check() { if eval "$2"; then echo "PASS  $1"; else echo "FAIL  $1"; fail=1; fi; }
check "T-001 vẫn đạt"                 "sh tests/T-001.sh >/dev/null"
check "Không còn số tạm"              "! grep -q 0900000000 $f"
check "Hotline thật tel:0933864891"   "grep -q 'href=\"tel:0933864891\"' $f"
check "Hiện số 0933 864 891 trên nút" "grep -q '0933 864 891' $f"
check "Bỏ chữ 'hàng đầu'"             "! grep -q 'hàng đầu' $f"
exit $fail
