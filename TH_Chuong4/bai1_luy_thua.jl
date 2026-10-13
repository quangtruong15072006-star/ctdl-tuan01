# Luy thua nhanh (chia de tri): tinh A^n mod M, in lan vet tung loi goi.
const A = 7      # co so
const M = 1000   # modulo
so_goi = 0  # so loi goi de quy (khong ke loi goi ngoai cung)
so_le = 0   # so buoc gap n le

function luy_thua(n::Int)
    global so_goi, so_le
    if n == 0
        println("n = 0: co so, tra ve 1")
        return 1 % M
    end
    so_goi += 1
    nua = luy_thua(n ÷ 2)       # chi goi de quy MOT lan
    kq = nua * nua % M
    isodd(n) && (so_le += 1)
    isodd(n) && (kq = kq * A % M)  # n le: nhan them mot lan A
    println("n = ", n, isodd(n) ? " (le)" : " (chan)", ": nua = ", nua,
            ", binh phuong mod M = ", nua * nua % M, ", tra ve ", kq)
    return kq
end

function main()
    println("MSSV: DIEN_MSSV | Ma ca: DIEN_MA_CA")
    println("Nhap n (0..60):")
    n = tryparse(Int, strip(readline()))
    if n === nothing || !(0 <= n <= 60)
        println("Du lieu khong hop le.")
        return
    end
    kq = luy_thua(n)
    println("Ket qua: ", A, "^", n, " mod ", M, " = ", kq)
    println("So loi goi de quy: ", so_goi)
    println("So buoc n le: ", so_le)
end

main()
