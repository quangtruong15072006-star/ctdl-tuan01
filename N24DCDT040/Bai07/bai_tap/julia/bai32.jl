function dem_mot_con(g)
    g===nothing && return 0
    _,trai,phai=g
    a,b=trai!==nothing,phai!==nothing
    # TODO: xor(a,b) cho đóng góp; cộng hai con.
    error("TODO B32: số nút một con")
end
g=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,(14,nothing,nothing)))
println("Mong đợi:2; lá:0")
try; println(dem_mot_con(g)," ",dem_mot_con((1,nothing,nothing)))
catch e; println(sprint(showerror,e)); end
