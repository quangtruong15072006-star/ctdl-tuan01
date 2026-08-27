function dao_nguoc(n::Int)
    is_negative = n < 0
    n = abs(n)
    
    rev = 0
    while n > 0
        rev = rev * 10 + n % 10
        n = div(n, 10)
    end
    
    return is_negative ? -rev : rev
end

function main()
    line = readline()
    if !isempty(strip(line))
        n = parse(Int64, strip(line))
        println(dao_nguoc(n))
    end
end

main()