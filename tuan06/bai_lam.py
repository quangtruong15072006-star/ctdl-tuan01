#BAI 1:
def dem_gia_tri(L, x) -> int:
    dem = 0
    p = L.dau
    while p is not None:
        if p.gt == x:
            dem += 1
        p = p.ke
    return dem

#BAI 2:
def xoa_tat_ca(L, x) -> int:
    so_luong_xoa = 0
    
    #Xoá nút mang giả trị x ở đầu danh sách
    while L.dau is not None and L.dau.gt == x:
        L.dau = L.dau.ke
        so_luong_xoa += 1
        L.n -= 1
        
    # xoá các nút mang giá trị x ở giữa và cuối danh sách 
    p = L.dau
    while p is not None and p.ke is not None:
        if p.ke.gt == x:
            p.ke = p.ke.ke
            so_luong_xoa += 1
            L.n -= 1
        else:
            p = p.ke
            
    return so_luong_xoa

#BÀI 3:
def lay_nhieu(s, k) -> list:
    # Kiểm tra k hợp lệ trước khi thao tác
    if type(k) is bool or not isinstance(k, int):
        raise ValueError("k phải là số nguyên!")
    if k < 0 or k > len(s.a):
        raise ValueError(f"k không hợp lệ! 0 <= k <= {len(s.a)}")
        
    res = []
    for _ in range(k):
        res.append(s.lay())  # Gọi thao tác lấy 1 phần tử của ngăn xếp
    return res

#BÀI 4:     
def xem_k(q, k) -> list:
    # Kiểm tra k hợp lệ
    if type(k) is bool or not isinstance(k, int):
        raise ValueError("k phải là số nguyên!")
    if k < 0 or k > q.so:
        raise ValueError(f"k không hợp lệ! 0 <= k <= {q.so}")
        
    res = []
    idx = q.dau
    for _ in range(k):
        res.append(q.a[idx])
        idx = (idx + 1) % len(q.a)  # Quay vòng chỉ số mảng
    return res