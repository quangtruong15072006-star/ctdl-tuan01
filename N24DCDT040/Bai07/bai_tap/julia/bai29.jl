mutable struct Nut
    gt::Int; trai::Union{Nothing,Nut}; phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
function chen(g,x)
    g===nothing && return Nut(x)
    x==g.gt && return g
    error("TODO chèn đúng phía")
end
function tim(g,x)
    while g!==nothing
        x==g.gt && return g
        error("TODO tìm: chọn con")
    end
    return nothing
end
function xoa(g,x)
    g===nothing && return nothing
    error("TODO xóa 0/1/2 con, dùng kế vị")
end
function duyet(g,kieu)
    g===nothing && return Int[]
    error("TODO ghép theo truoc/giua/sau")
end
function thong_ke(g)
    g===nothing && return (0,0,0)
    error("TODO số nút, số lá, chiều cao")
end
println("Mong đợi: giữa1..7; (7,4,3); sau xóa:3,5,6,7")
try
    let g=Nut(4,Nut(2,Nut(1),Nut(3)),Nut(6,Nut(5),Nut(7)))
        println(duyet(g,:giua)," ",thong_ke(g))
        for x in [1,2,4]; g=xoa(g,x); end
        println(duyet(g,:giua))
    end
catch e; println(sprint(showerror,e)); end
