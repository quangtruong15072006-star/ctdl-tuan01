function phan_tich(n::Int)
    so_chu_so = 0
    tong_chu_so = 0
    
    while n > 0
        d = n % 10
        tong_chu_so += d
        so_chu_so += 1
        n = div(n, 10)
    end
    
    return (so_chu_so, tong_chu_so)
end

function main()
    line = readline()
    if !isempty(strip(line))
        n = parse(Int64, strip(line))
        so_chu_so, tong_chu_so = phan_tich(n)
        println("$so_chu_so $tong_chu_so")
    end
end

main()