# Day con tang dai nhat (quy hoach dong): f[i] = do dai day con tang dai nhat ket thuc dung tai a[i].
const A = [3, 10, 2, 1, 20, 4, 6, 21, 8]

function day_con_tang(a)
    n = length(a)
    f = ones(Int, n)     # co so: moi phan tu tu no la mot day con dai 1
    tu = zeros(Int, n)   # tu[i] = chi so dung truoc i trong day con; 0 la khong co
    for i in 1:n
        for j in 1:i-1
            if a[j] < a[i] && f[j] + 1 > f[i]
                f[i] = f[j] + 1
                tu[i] = j
            end
        end
        println("i = ", i, ": a = ", a[i], ", f = ", f[i], ", tu = ", tu[i] == 0 ? "khong" : string(tu[i]))
    end
    k = 1
    for i in 1:n
        if f[i] > f[k]; k = i; end   # vi tri dau tien dat max
    end
    day = Int[]
    while k != 0                     # truy vet nguoc theo tu
        push!(day, a[k])
        k = tu[k]
    end
    reverse!(day)
    return maximum(f), day
end

function main()
    println("MSSV: DIEN_MSSV | Ma ca: DIEN_MA_CA")
    println("Nhap n (1..", length(A), "), so phan tu dau tien cua day duoc xet:")
    n = tryparse(Int, strip(readline()))
    if n === nothing || !(1 <= n <= length(A))
        println("Du lieu khong hop le.")
        return
    end
    a = A[1:n]
    println("Day xet: ", join(a, " "))
    do_dai, day = day_con_tang(a)
    println("Do dai day con tang dai nhat: ", do_dai)
    println("Mot day con tang dai nhat: ", join(day, " "))
end

main()
