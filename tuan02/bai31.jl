using Printf

function thong_ke(a)
    if isempty(a)
        return 0, 0.0000, 0, 0
    end

    tong = sum(a)
    trung_binh = @sprintf("%.4f", Float64(tong) / length(a))
    
    nho_nhat = minimum(a)
    lon_nhat = maximum(a)

    return tong, trung_binh, nho_nhat, lon_nhat
end
