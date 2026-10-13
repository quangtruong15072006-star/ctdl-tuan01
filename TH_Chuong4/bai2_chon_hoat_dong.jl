# Chon hoat dong (tham lam): sap xep theo tieu chi roi quet, chon neu khong chong lan.
const HD = [(1, 4), (3, 5), (0, 6), (5, 7), (3, 9), (5, 9),
            (6, 10), (8, 11), (8, 12), (2, 14), (12, 16)]  # (bat dau, ket thuc)

function khoa(hd, tieu_chi)
    s, f = hd
    tieu_chi == 1 && return f        # ket thuc som nhat
    tieu_chi == 2 && return s        # bat dau som nhat
    return f - s                     # ngan nhat
end

function tuong_thich(hd, da_chon)
    s, f = hd
    for (s2, f2) in da_chon
        if s < f2 && s2 < f          # hai khoang thoi gian chong len nhau
            return false
        end
    end
    return true
end

function chon_hoat_dong(tieu_chi)
    thu_tu = sort(HD, by = hd -> khoa(hd, tieu_chi))  # buoc sap xep
    da_chon = Tuple{Int,Int}[]
    for hd in thu_tu
        if tuong_thich(hd, da_chon)
            push!(da_chon, hd)
            println("Xet ", hd, " -> CHON")
        else
            println("Xet ", hd, " -> bo, chong lan voi hoat dong da chon")
        end
    end
    return da_chon
end

function main()
    println("MSSV: DIEN_MSSV | Ma ca: DIEN_MA_CA")
    println("Nhap tieu chi (1: ket thuc som nhat, 2: bat dau som nhat, 3: ngan nhat):")
    tieu_chi = tryparse(Int, strip(readline()))
    if tieu_chi === nothing || !(tieu_chi in (1, 2, 3))
        println("Du lieu khong hop le.")
        return
    end
    da_chon = chon_hoat_dong(tieu_chi)
    println("Cac hoat dong duoc chon: ", join(["($s,$f)" for (s, f) in da_chon], " "))
    println("So hoat dong duoc chon: ", length(da_chon))
end

main()
