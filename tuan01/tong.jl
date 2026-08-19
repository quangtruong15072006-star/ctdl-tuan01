function main()
    input_data = split(read(stdin, String))
    if isempty(input_data)
        return
    end
    
    n = parse(Int, input_data[1])
    a = [parse(Int64, input_data[i]) for i in 2:(n+1)]
    
    println("$(sum(a)) $(maximum(a))")
end

main()
