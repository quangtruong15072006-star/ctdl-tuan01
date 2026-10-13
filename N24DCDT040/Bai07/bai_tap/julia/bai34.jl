function in_cay(g)
    dong=String[]
    function ve(nut,sau)
        nut===nothing && return
        x,trai,phai=nut
        # TODO: push! dòng repeat(" ",4*sau), gọi hai con.
        error("TODO B34: thụt theo độ sâu")
    end
    ve(g,0)
    return join(dong,'\n')
end
g=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,nothing))
println("Mong đợi:\n8\n    3\n        6\n    10")
try; println(in_cay(g))
catch e; println(sprint(showerror,e)); end
