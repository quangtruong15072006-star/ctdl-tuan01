const GRAPH = Dict{String,Any}(
    "A" => ["B", "C"], "B" => ["D", "E"],
    "C" => ["D", "F"], "D" => 5, "E" => 3, "F" => 7)

function solve(name::String, is_max::Bool, memo, stats)
    key = (name, is_max)
    if haskey(memo, key)
        stats["hit"] += 1
        return memo[key]
    end
    stats["computed"] += 1
    node = GRAPH[name]
    if node isa Integer
        memo[key] = node
        return node
    end
    best = is_max ? -2e9 : 2e9
    for child in node
        value = solve(child, !is_max, memo, stats)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        error("TODO: gộp điểm con")
    end
    # TODO: lưu memo[key] = best trước khi trả.
    error("TODO: ghi nhớ nút trong")
    return best
end

# Sau TODO: điểm 5, computed=6, hit=1.
memo = Dict{Tuple{String,Bool},Float64}()
stats = Dict("computed" => 0, "hit" => 0)
println((solve("A", true, memo, stats), stats))
# Gọi lại: không tính thêm; hit tăng thành 2.
println((solve("A", true, memo, stats), stats))
