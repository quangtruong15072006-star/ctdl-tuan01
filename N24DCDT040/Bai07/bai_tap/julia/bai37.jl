function khoi_phuc(truoc,giua)
    length(truoc)==length(giua) && Set(truoc)==Set(giua) ||
        error("hai dãy không tương ứng")
    length(unique(truoc))==length(truoc) || error("khóa trùng")
    isempty(truoc) && return nothing
    goc=first(truoc)
    p=findfirst(==(goc),giua)
    # TODO: chia đoạn theo p, trả (goc,trai,phai).
    error("TODO B37: dựng hai cây con")
end
sau(g)=g===nothing ? Int[] : vcat(sau(g[2]),sau(g[3]),[g[1]])
truoc=[8,3,1,6,10];giua=[1,3,6,8,10]
println("Mong đợi duyệt sau:[1,6,3,10,8]")
try; println(sau(khoi_phuc(truoc,giua)))
catch e; println(sprint(showerror,e)); end
