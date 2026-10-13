function tong_nut(g)
    g===nothing && return 0
    x,trai,phai=g
    error("TODO: cộng khóa và tổng hai con")
end
function tong_la(g)
    g===nothing && return 0
    x,trai,phai=g
    trai===nothing && phai===nothing && return x
    error("TODO: tổng lá hai con")
end
g=(5,(-2,nothing,nothing),(9,(0,nothing,nothing),nothing))
println("Mong đợi:12,-2")
try; println(tong_nut(g)," ",tong_la(g))
catch e; println(sprint(showerror,e)); end
