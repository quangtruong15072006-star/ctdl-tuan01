function day_xuong!(a,i,n)
    while 2*i<=n
        error("TODO: chọn con lớn, đổi và tiến xuống")
    end
end
function heap_sort!(a)
    n=length(a)
    for i in (n÷2):-1:1;day_xuong!(a,i,n);end
    for cuoi in n:-1:2
        error("TODO: đổi gốc/cuối, vun vùng nhỏ hơn")
    end
end
function quick_sort!(a,lo=1,hi=length(a))
    lo>=hi && return
    error("TODO: chọn chốt, phân hoạch, xử lý hai đoạn")
end
a=[7,2,9,1,5,3,8,4]
println("Mong đợi:[1,2,3,4,5,7,8,9]")
for ham in (heap_sort!,quick_sort!)
    b=copy(a)
    try;ham(b);println(b)
    catch e;println(sprint(showerror,e));end
end
