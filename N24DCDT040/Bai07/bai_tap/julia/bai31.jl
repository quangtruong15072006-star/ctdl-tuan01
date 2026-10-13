function nho_nhat(g)
    g===nothing && return nothing
    while g[2]!==nothing
        error("TODO: đi trái")
    end
    return g[1]
end
function lon_nhat(g)
    g===nothing && return nothing
    while g[3]!==nothing
        error("TODO: đi phải")
    end
    return g[1]
end
g=(8,(3,(1,nothing,nothing),nothing),(10,nothing,(14,nothing,nothing)))
println("Mong đợi:1,14; rỗng:nothing")
try; println(nho_nhat(g)," ",lon_nhat(g)," ",nho_nhat(nothing))
catch e; println(sprint(showerror,e)); end
