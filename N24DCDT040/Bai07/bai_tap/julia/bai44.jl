function cung_cay(a,b)
    (a===nothing || b===nothing) && return a===nothing && b===nothing
    a[1]!=b[1] && return false
    error("TODO: so cặp trái và cặp phải")
end
function la_cay_con(g,b)
    b===nothing && return true
    g===nothing && return false
    error("TODO: thử khớp tại g, tìm hai nhánh")
end
a=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,nothing))
b=(3,nothing,(6,nothing,nothing));c=(3,nothing,nothing)
println("Mong đợi:B=true,C=false; hai rỗng=true")
try;println(la_cay_con(a,b)," ",la_cay_con(a,c)," ",cung_cay(nothing,nothing))
catch e;println(sprint(showerror,e));end
