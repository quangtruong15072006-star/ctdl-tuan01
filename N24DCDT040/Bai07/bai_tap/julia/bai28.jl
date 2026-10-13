function minimax(tree, is_max)
    tree isa Number && return tree
    vals = [minimax(child, !is_max) for child in tree]
    return is_max ? maximum(vals) : minimum(vals)
end
function alpha_beta(tree, is_max, alpha, beta, visited, path="A")
    if tree isa Number
        push!(visited, (path, tree))
        return tree
    end
    best = is_max ? -Inf : Inf
    for (k, child) in enumerate(tree)
        child_path = path * "." * string(k)
        value = alpha_beta(child, !is_max, alpha, beta, visited, child_path)
        if is_max
            best = max(best, value)
            alpha = max(alpha, best)
        else
            best = min(best, value)
            beta = min(beta, best)
        end
        # TODO: thêm beta <= alpha && break tại đây.
    end
    return best
end
tree = [[3, 12, 8], [2, 4, 6], [14, 5, 2]]
visited = Tuple{String,Int}[]
println("Minimax: ", minimax(tree, true))
println("Khung alpha-beta: ", alpha_beta(tree, true, -Inf, Inf, visited))
println("Lá đã xét: ", visited)
# Trước TODO xét đủ 9 lá; sau TODO tự đối chiếu số lá bằng lần vết.
