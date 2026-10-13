DATA = [["đỏ","nhỏ","có"], ["đỏ","lớn","có"],
        ["xanh","nhỏ","không"], ["xanh","lớn","không"]]
function gini(labels)
    isempty(labels) && return 0.0
    counts = Dict{String,Int}()
    for x in labels
        counts[x] = get(counts,x,0) + 1
    end
    total = 0.0
    for c in values(counts)
        # TODO cộng (c/length(labels))^2.
        error("TODO: bình phương xác suất")
    end
    return 1.0-total
end
function learn(rows,cols)
    labels = [r[end] for r in rows]
    length(unique(labels)) == 1 && return labels[1]
    isempty(cols) && error("TODO: trả lá đa số")
    candidates = []
    for col in cols
        groups = Dict{String,Vector{Vector{String}}}()
        for r in rows
            push!(get!(groups,r[col],Vector{String}[]),r)
        end
        score = 0.0
        for group in values(groups)
            # TODO cộng trọng số nhóm * gini([r[end] for r in group]) vào score.
            error("TODO: Gini có trọng số của nhóm")
        end
        push!(candidates,(score,col,groups))
    end
    sort!(candidates;by=x -> (x[1],x[2]))
    _,col,groups = candidates[1]
    rest = [c for c in cols if c != col]
    return (col,Dict(v=>learn(g,rest) for (v,g) in groups))
end
# Sau TODO: Gini gốc=0.5; cây hỏi cột 1.
println(learn(DATA,[1,2]))
