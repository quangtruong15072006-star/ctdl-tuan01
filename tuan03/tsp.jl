function run_tsp()
    D = [
        0 10 15 20;
        10 0 35 25;
        15 35 0 30;
        20 25 30 0
    ]
    N = 4
    c_min = 10

    function solve_branch(use_pruning)
        min_cost = Ref(100000)
        nodes = Ref(0)
        visited = zeros(Bool, N)
        visited[1] = true

        function backtrack(curr, count, cost)
            nodes[] += 1
            if count == N
                if D[curr, 1] != 0
                    min_cost[] = min(min_cost[], cost + D[curr, 1])
                end
                return
            end

            if use_pruning
                lb = cost + (N - count + 1) * c_min
                if lb >= min_cost[]
                    return
                end
            end

            for nxt in 1:N
                if !visited[nxt] && D[curr, nxt] != 0
                    visited[nxt] = true
                    backtrack(nxt, count + 1, cost + D[curr, nxt])
                    visited[nxt] = false
                end
            end
        end

        backtrack(1, 1, 0)
        return min_cost[], nodes[]
    end

    c1, n1 = solve_branch(true)
    c2, n2 = solve_branch(false)

    println("Co cat nhanh: Cost = ", c1, ", Nodes = ", n1)
    println("Khong cat nhanh: Cost = ", c2, ", Nodes = ", n2)
end

run_tsp()