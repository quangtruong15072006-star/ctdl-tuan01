function gini(rows)
    isempty(rows) && return 0.0
    counts = Dict{String,Int}()
    for row in rows
        label = row[end]
        counts[label] = get(counts, label, 0) + 1
    end
    return 1 - sum((c/length(rows))^2 for c in values(counts))
end
function gini_split(rows, col)
    groups = Dict{String,Vector{Vector{String}}}()
    for row in rows
        key = row[col]
        if !haskey(groups, key)
            groups[key] = Vector{String}[]
        end
        push!(groups[key], row)
    end
    total = 0.0
    for group in values(groups)
        total += length(group)/length(rows) * gini(group)
    end
    return total
end
rows = [
    ["nắng","nhẹ","có"], ["nắng","mạnh","không"],
    ["mây","nhẹ","có"], ["mây","mạnh","có"],
    ["mưa","nhẹ","không"], ["mưa","mạnh","không"],
    ["nắng","nhẹ","có"], ["mưa","mạnh","không"],
]
weather = gini_split(rows, 1)
wind = gini_split(rows, 2)
println(gini(rows), " ", weather, " ", wind)
# TODO: so weather/wind và in cột được chọn, kèm bảng tính tay.
