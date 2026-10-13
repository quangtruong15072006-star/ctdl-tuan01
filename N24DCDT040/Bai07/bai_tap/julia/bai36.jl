mutable struct MinHeap
    a::Vector{Tuple{Int,String}}
end
MinHeap()=MinHeap(Tuple{Int,String}[])
function them!(h,d,u)
    push!(h.a,(d,u))
    i=length(h.a)
    error("TODO: đẩy lên")
end
function lay!(h)
    isempty(h.a) && error("heap rỗng")
    error("TODO: giữ gốc, thay cuối, đẩy xuống")
end
function dijkstra(g,nguon)
    d=Dict(u=>typemax(Int) for u in keys(g))
    d[nguon]=0
    h=MinHeap();them!(h,0,nguon)
    while !isempty(h.a)
        du,u=lay!(h)
        # TODO: bỏ bản cũ trước khi nới lỏng.
        for (v,w) in g[u]
            error("TODO: cập nhật khoảng cách và heap")
        end
    end
    return d
end
g=Dict("A"=>[("B",4),("C",1)],"B"=>[("D",1)],
       "C"=>[("B",2),("D",5)],"D"=>Tuple{String,Int}[])
println("Mong đợi:A0,B3,C1,D4")
try; println(dijkstra(g,"A"))
catch e; println(sprint(showerror,e)); end
