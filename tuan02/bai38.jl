function da_sap_xep(a; nghiem_ngat=false)
    for i in 2:length(a)
        if nghiem_ngat
            if a[i] <= a[i - 1]
                return false
            end
        else
            if a[i] < a[i - 1]
                return false
            end
        end
    end
    return true
end

function main()
    line = readline()
    if isempty(strip(line)) return end
    
    tokens = split(line)
    n = parse(Int, tokens[1])
    a = [parse(Int, x) for x in tokens[2:end]]
    
    nn = da_sap_xep(a, nghiem_ngat=true)
    kg = da_sap_xep(a, nghiem_ngat=false)
    
    println("Nghiem ngat: ", nn ? "YES" : "NO")
    println("Khong giam: ", kg ? "YES" : "NO")
end

main()