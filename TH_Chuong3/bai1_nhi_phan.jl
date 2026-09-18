# Julia danh chi so mang tu 1.
function liet_ke(n::Int, k::Int)
    x = zeros(Int, n)
    dem = 0
    dem_dat = 0

    while true
        if sum(x) == k
            println(join(x))
            dem_dat += 1
        end

        dem += 1
        i = n
        while i >= 1 && x[i] == 1
            x[i] = 0  # Xoa cac bit 1 lien tiep o duoi.
            i -= 1
        end
        if i < 1
            break
        end
        x[i] = 1
    end
    println("So xau dat: ", dem_dat)
    return dem
end

function main()
    println("MSSV: N24DCDT103 | Ma ca: 6")
    println("Nhap n (1..10) va k (0..n):")
    
    line = strip(readline())
    parts = split(line)
    
    if length(parts) == 2
        n = tryparse(Int, parts[1])
        k = tryparse(Int, parts[2])
    elseif length(parts) == 1
        n = tryparse(Int, parts[1])
        k_line = strip(readline())
        k = tryparse(Int, k_line)
    else
        n = nothing
        k = nothing
    end

    if n === nothing || k === nothing || !(1 <= n <= 10) || !(0 <= k <= n)
        println("Du lieu khong hop le.")
        return
    end

    dem = liet_ke(n, k)
    println("Tong so xau: ", dem)
end

main()