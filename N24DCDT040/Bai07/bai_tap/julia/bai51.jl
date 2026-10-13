const TREES = [[[4, 7], [9, 2]], [[4, 7], [2, 9]]]

function alpha_beta(node, is_max::Bool, seen::Vector{Int},
                    alpha=-2e9, beta=2e9)
    if node isa Integer
        push!(seen, node)
        return node
    end
    best = is_max ? -2e9 : 2e9
    for child in node
        value = alpha_beta(child, !is_max, seen, alpha, beta)
        # TODO: MAX lấy max(best, value), rồi tăng alpha.
        # TODO: MIN lấy min(best, value), rồi giảm beta.
        error("TODO: cập nhật giá trị và cận")
        if beta <= alpha
            # TODO: dùng break để bỏ các con chưa xét.
            error("TODO: cắt nhánh")
        end
    end
    return best
end

# Sau TODO: (4, 4 lá) rồi (4, 3 lá).
for tree in TREES
    seen = Int[]
    value = alpha_beta(tree, true, seen)
    println((value, length(seen), seen))
end
