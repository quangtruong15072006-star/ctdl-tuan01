const TREE = Dict("h" => 0, "children" => Any[
    Dict("h" => 2, "children" => [4, 7]),
    Dict("h" => 5, "children" => [1, 6])
])

function minimax_depth(node, depth::Int, is_max::Bool)
    if node isa Integer
        return node
    end
    if depth == 0
        # TODO: trả node["h"] vì nút chưa kết thúc.
        error("TODO: điểm lượng giá")
    end
    best = is_max ? -2e9 : 2e9
    for child in node["children"]
        value = minimax_depth(child, depth - 1, !is_max)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        error("TODO: gộp điểm con")
    end
    return best
end

# Sau TODO: depth=1 -> 5; depth=2 -> 4.
for depth in [1, 2]
    println((depth, minimax_depth(TREE, depth, true)))
end
