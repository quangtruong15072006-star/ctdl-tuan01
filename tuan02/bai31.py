def thong_ke(a):
    if not a:
        return 0, 0.0, 0, 0
    
    tong = sum(a)
    trung_binh = round(tong / len(a), 4)
    nho_nhat = min(a)
    lon_nhat = max(a)
    
    return tong, trung_binh, nho_nhat, lon_nhat
