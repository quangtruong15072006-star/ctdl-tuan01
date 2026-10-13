function bang_ma(s)
    freq=Dict(c=>count(==(c),s) for c in unique(s))
    nodes=Tuple{Int,Any}[(f,c) for (c,f) in freq]
    isempty(nodes) && return Dict{Char,String}()
    while length(nodes)>1
        sort!(nodes;by=x->x[1])
        f1,t1=popfirst!(nodes);f2,t2=popfirst!(nodes)
        error("TODO: ghép tần số và cặp cây con")
    end
    ma=Dict{Char,String}()
    function ve(nut,p)
        if nut isa Char;ma[nut]=isempty(p) ? "0" : p;return;end
        error("TODO: đi hai cạnh và nối0/1")
    end
    ve(nodes[1][2],"");return ma
end
function ma_hoa(s,ma)
    bits=String[]
    for c in s;error("TODO: push! mã ký tự");end
    return join(bits)
end
function giai_ma(bits,ma)
    nguoc=Dict(v=>k for (k,v) in ma);out=Char[];p=""
    for b in bits
        p*=string(b)
        error("TODO: khớp mã, xuất, reset p")
    end
    return join(out)
end
s="BANANA"
println("Mong đợi:3 mã,9bit; giải mã=BANANA")
try
    ma=bang_ma(s);bits=ma_hoa(s,ma)
    println(ma," ",bits," ",length(bits)," ",giai_ma(bits,ma))
catch e;println(sprint(showerror,e));end
