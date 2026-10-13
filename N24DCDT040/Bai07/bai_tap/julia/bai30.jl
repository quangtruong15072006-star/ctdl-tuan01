function la_bst(g,lo=nothing,hi=nothing)
    g===nothing && return true
    x,trai,phai=g
    # TODO: kiểm khoảng mở và gọi hai con với cận mới.
    error("TODO B30: cận từ toàn bộ tổ tiên")
end
dung=(4,(2,(1,nothing,nothing),(3,nothing,nothing)),(6,nothing,nothing))
sai=(50,(30,nothing,(60,nothing,nothing)),(70,nothing,nothing))
println("Mong đợi: true, false")
try; println(la_bst(dung)," ",la_bst(sai))
catch e; println(sprint(showerror,e)); end
