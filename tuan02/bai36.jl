function giai_thua(n::Int)
    try
        kq = factorial(n)
        return (true, kq)
    catch e
        if typeof(e) == OverflowError
            return (false, 0)
        else
            rethrow(e)
        end
    end
end

function main()
    line = readline()
    if !isempty(strip(line))
        n = parse(Int64, strip(line))
        ok, kq = giai_thua(n)
        if ok
            println(kq)
        else
        
            kq_big = factorial(BigInt(n))
            println("TRAN SO ($n! = $kq_big > $(typemax(Int64)))")
        end
    end
end

main()