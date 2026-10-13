DATA = [["đỏ","có"],["đỏ","có"],
        ["xanh","không"],["đỏ","không"]]
BOOT = [[1,2,3,3],[1,1,2,3],[4,4,3,1]]
function majority(labels)
    names=sort!(unique(labels))
    return names[argmax([count(==(x),labels) for x in names])]
end
function learn_stump(rows)
    groups=Dict{String,Vector{String}}()
    for (color,label) in rows
        push!(get!(groups,color,String[]),label)
    end
    tree=Dict{String,String}()
    for (color,labels) in groups
        error("TODO: tree[color]=majority(labels)")
    end
    return tree
end
function vote(trees,color)
    counts=Dict{String,Int}()
    for tree in trees
        label=tree[color]
        error("TODO: counts[label] tăng một phiếu")
    end
    names=sort!(collect(keys(counts)))
    return names[argmax([counts[x] for x in names])]
end
trees=[learn_stump([DATA[i] for i in ids]) for ids in BOOT]
# Sau TODO: phiếu có,có,không; biểu quyết có.
println([t["đỏ"] for t in trees])
println(vote(trees,"đỏ"))
