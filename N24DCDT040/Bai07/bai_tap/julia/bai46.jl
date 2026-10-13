DATA = [["đỏ","nhỏ","có"], ["đỏ","lớn","có"],
        ["xanh","nhỏ","không"], ["xanh","lớn","không"]]
function entropy(labels)
    isempty(labels) && return 0.0
    counts = Dict{String,Int}()
    for x in labels
        counts[x] = get(counts,x,0)+1
    end
    result = 0.0
    for c in values(counts)
        p = c/length(labels)
        error("TODO: result cộng -p*log2(p)")
    end
    return result
end
function gain(rows,col)
    parent = entropy([r[end] for r in rows])
    groups = Dict{String,Vector{Vector{String}}}()
    for r in rows
        push!(get!(groups,r[col],Vector{String}[]),r)
    end
    for group in values(groups)
        error("TODO: trừ entropy nhóm có trọng số")
    end
    return parent
end
# Sau TODO: gain màu=1.0; gain cỡ=0.0.
println((gain(DATA,1),gain(DATA,2)))
