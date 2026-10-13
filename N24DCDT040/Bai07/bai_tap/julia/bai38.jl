cao(g)=g===nothing ? 0 : 1+max(cao(g[2]),cao(g[3]))
can(g)=g===nothing ? 0 : cao(g[2])-cao(g[3])
giua(g)=g===nothing ? Int[] : vcat(giua(g[2]),[g[1]],giua(g[3]))
quay_trai(g)=error("TODO: quay trái, giữ cây trung gian")
quay_phai(g)=error("TODO: quay phải đối xứng")
function xoa_avl(g,x)
    g===nothing && return nothing
    k,trai,phai=g
    # TODO: xóa BST, dựng lại tuple, kiểm hệ số con.
    error("TODO B38: cân bằng và trả gốc")
end
println("Mong đợi:giữa[1,2,3,4],gốc2,cao3")
try
    let g=(4,(2,(1,nothing,nothing),(3,nothing,nothing)),(5,nothing,nothing))
        g=xoa_avl(g,5)
        println(giua(g)," ",g[1]," ",cao(g))
    end
catch e; println(sprint(showerror,e)); end
