 function is_safe(x, row, col)
    for i in 1:(row - 1)
        if x[i] == col || abs(x[i] - col) == abs(i - row)
            return false
        end
    end
    return true
end

function try_queen(row, n, x, nodes, solutions)
    nodes[1] += 1
    for col in 1:n
        if is_safe(x, row, col)
            x[row] = col
            if row == n
                push!(solutions, copy(x))
            else
                try_queen(row + 1, n, x, nodes, solutions)
            end
        end
    end
end

print("Nhập n: ")
n = parse(Int, readline())
x = zeros(Int, n)
nodes = [0]
solutions = Vector{Vector{Int}}()
try_queen(1, n, x, nodes, solutions)

println("Số nút đã duyệt: ", nodes[1])
println("Số lời giải: ", length(solutions))
if !isempty(solutions)
    println("Bàn cờ lời giải đầu tiên: ", solutions[1])
end
