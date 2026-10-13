mutable struct Nut
    gt::Int;trai::Union{Nothing,Nut};phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
function tim(g,x)
    while g!==nothing
        g.gt==x && return g
        g=x<g.gt ? g.trai : g.phai
    end
    return nothing
end
co(g,x)=g!==nothing && (g===x || co(g.trai,x) || co(g.phai,x))
function lca_bst(g,x,y)
    (tim(g,x)===nothing || tim(g,y)===nothing) && return nothing
    while g!==nothing
        error("TODO: cùng phía đi xuống, tách phía trả g")
    end
end
function lca_chung(g,x,y)
    (!co(g,x) || !co(g,y)) && return nothing
    function di(u)
        u===nothing && return nothing
        (u===x || u===y) && return u
        error("TODO: tổng hợp hai kết quả con")
    end
    return di(g)
end
mot,sau=Nut(1),Nut(6)
ba=Nut(3,mot,sau);g=Nut(8,ba,Nut(10))
println("Mong đợi:3,3")
try;println(lca_bst(g,1,6).gt," ",lca_chung(g,ba,sau).gt)
catch e;println(sprint(showerror,e));end
