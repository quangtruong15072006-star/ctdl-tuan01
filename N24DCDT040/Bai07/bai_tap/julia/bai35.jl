function truoc(g)
    stack,out=(g===nothing ? Any[] : Any[g]),Int[]
    while !isempty(stack)
        nut=pop!(stack)
        error("TODO: xuất, đẩy con theo LIFO")
    end
    return out
end
function giua(g)
    stack,out=Any[],Int[]
    while g!==nothing || !isempty(stack)
        error("TODO: hạ trái, pop, xuất, sang phải")
    end
    return out
end
function sau(g)
    stack,out=(g===nothing ? Any[] : Any[(g,false)]),Int[]
    while !isempty(stack)
        nut,da_mo=pop!(stack)
        error("TODO: cờ mở con/xuất nút")
    end
    return out
end
g=(8,(3,nothing,nothing),(10,nothing,nothing))
println("Mong đợi:[8,3,10];[3,8,10];[3,10,8]")
for ham in (truoc,giua,sau)
    try; println(ham(g))
    catch e; println(sprint(showerror,e)); end
end
