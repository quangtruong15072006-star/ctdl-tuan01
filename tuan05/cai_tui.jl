function cai_tui(n, W, w, v)
    f = zeros(Int, n + 1, W + 1)
    
    for i in 1:n
        for j in 1:W
            if j < w[i]
                f[i + 1, j + 1] = f[i, j + 1]
            else
                f[i + 1, j + 1] = max(f[i, j + 1], f[i, j - w[i] + 1] + v[i])
            end
        end
    end

    println("Bang f:")
    display(f)
    println("\nGia tri lon nhat: ", f[n + 1, W + 1])

    i, j = n, W
    chon = String[]
    ten_do_vat = ["A", "B", "C", "D", "E"]
    while i > 0 && j > 0
        if f[i + 1, j + 1] != f[i, j + 1]
            push!(chon, ten_do_vat[i])
            j -= w[i]
        end
        i -= 1
    end
    reverse!(chon)
    println("Tap do vat duoc chon: ", chon)
end

n = 5
W = 11
w = [2, 3, 4, 5, 7]
v = [3, 7, 9, 12, 16]
cai_tui(n, W, w, v)