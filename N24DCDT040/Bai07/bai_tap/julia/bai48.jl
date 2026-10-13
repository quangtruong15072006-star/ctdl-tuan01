DATA = [["đỏ","có"],["đỏ","có"],
        ["xanh","không"],["xanh","không"]]
function majority(labels)
    names = sort!(unique(labels))
    return names[argmax([count(==(x),labels) for x in names])]
end
function learn(rows,max_height,level=1)
    labels = [r[end] for r in rows]
    length(unique(labels))==1 && return labels[1]
    if level >= max_height
        # TODO return majority(labels)
        error("TODO: lá tại giới hạn")
    end
    groups = Dict{String,Vector{Vector{String}}}()
    for r in rows
        push!(get!(groups,r[1],Vector{String}[]),r)
    end
    children = Dict{String,Any}()
    for (value,group) in groups
        error("TODO: children[value]=learn(group,max_height,level+1)")
    end
    return (1,children)
end
# Sau TODO: cao 1 là "có"; cao 2 có hai lá theo màu.
println(("Cao 1",learn(DATA,1)))
println(("Cao 2",learn(DATA,2)))
