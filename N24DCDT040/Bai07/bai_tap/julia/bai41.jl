mutable struct Fenwick
    a::Vector{Int};bit::Vector{Int}
end
function cong!(f,i,delta)
    j=i+1
    while j<=length(f.bit)
        error("TODO: cộng delta và tiến theo lowbit")
    end
end
function Fenwick(a::Vector{Int})
    f=Fenwick(copy(a),zeros(Int,length(a)))
    for i in eachindex(a);cong!(f,i-1,a[i]);end
    return f
end
function gan!(f,i,moi)
    delta=moi-f.a[i+1];f.a[i+1]=moi
    cong!(f,i,delta)
end
function tien_to(f,r)
    j=r+1;total=0
    while j>0
        error("TODO: cộng block và giảm theo lowbit")
    end
    return total
end
doan(f,l,r)=tien_to(f,r)-tien_to(f,l-1)
println("Mong đợi:8,10,10")
try
    f=Fenwick([2,1,4,3,5]);println(doan(f,1,3))
    gan!(f,2,6);println(doan(f,1,3))
    gan!(f,2,6);println(doan(f,1,3))
catch e;println(sprint(showerror,e));end
