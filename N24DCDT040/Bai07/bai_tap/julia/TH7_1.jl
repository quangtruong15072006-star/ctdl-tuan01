mutable struct Nut
    gt::Int; trai::Union{Nothing,Nut}; phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
cao(g)=g===nothing ? 0 : 1+max(cao(g.trai),cao(g.phai))
function chen(g,x)
    g===nothing && return Nut(x)
    x==g.gt && return g
    # TODO: chèn đúng phía, nhận lại con.
    error("TODO chen BST")
end
function tim(g,x)
    while g!==nothing
        x==g.gt && return g
        error("TODO tim: chọn con")
    end
    return nothing
end
function xoa(g,x)
    g===nothing && return nothing
    error("TODO xoa: 0/1/2 con và kế vị")
end
function giua(g)
    g===nothing && return Int[]
    error("TODO giua: trái, gốc, phải")
end
quay_trai(g)=error("TODO quay trái: giữ cây trung gian")
quay_phai(g)=error("TODO quay phải: đổi liên kết đối xứng")
function chen_avl(g,x)
    g===nothing && return Nut(x)
    error("TODO chèn BST rồi xét TT/PP/TP/PT")
end
println("Mong đợi BST:1..7; bốn AVL: gốc20,cao2")
try
    let g=nothing
        for x in [4,2,6,1,3,5,7]; g=chen(g,x); end
        println(giua(g)," tìm5=",tim(g,5).gt)
        println("Sau xóa4:",giua(xoa(g,4)))
    end
    for ds in ([30,20,10],[10,20,30],[30,10,20],[10,30,20])
        a=nothing
        for x in ds; a=chen_avl(a,x); end
        println(a.gt," ",cao(a))
    end
catch e; println(sprint(showerror,e)); end
