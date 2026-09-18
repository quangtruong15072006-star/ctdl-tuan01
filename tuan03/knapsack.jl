struct Item
    w::Int
    v::Int
    ratio::Float64
end

items = [Item(5, 12, 2.4), Item(7, 15, 2.14), Item(4, 8, 2.0), Item(3, 5, 1.67)]
capacity = 14
n = length(items)

function upper_bound(idx, cur_w, cur_v)
    bound = Float64(cur_v)
    tot_w = cur_w
    for i in idx:n
        if tot_w + items[i].w <= capacity
            tot_w += items[i].w
            bound += items[i].v
        else
            bound += (capacity - tot_w) * items[i].ratio
            break
        end
    end
    return bound
end

function solve_knapsack(use_pruning)
    max_v = Ref(0)
    nodes = Ref(0)

    function backtrack(idx, cur_w, cur_v)
        nodes[] += 1
        if cur_v > max_v[]
            max_v[] = cur_v
        end
        if idx > n
            return
        end

        if use_pruning && upper_bound(idx, cur_w, cur_v) <= max_v[]
            return
        end

        if cur_w + items[idx].w <= capacity
            backtrack(idx + 1, cur_w + items[idx].w, cur_v + items[idx].v)
        end
        backtrack(idx + 1, cur_w, cur_v)
    end

    backtrack(1, 0, 0)
    return max_v[], nodes[]
end

v1, n1 = solve_knapsack(true)
v2, n2 = solve_knapsack(false)
println("Co cat nhanh: Max Value = ", v1, ", Nodes = ", n1)
println("Khong cat nhanh: Max Value = ", v2, ", Nodes = ", n2)