function la_chinh_phuong(n::Int)
    # TODO
    if n < 0
        return false
    end
    
    left = Int128(0)
    right = Int128(10^9)
    
    while left <= right
        mid = (left + right) ÷ 2
        sq = mid * mid
        
        if sq == n
            return true
        elseif sq < n
            left = mid + 1
        else
            right = mid - 1
        end
    end
    
    return false
end

# Đoạn code chạy thử/nhập xuất:
n = parse(Int, readline())
println(la_chinh_phuong(n) ? "YES" : "NO")