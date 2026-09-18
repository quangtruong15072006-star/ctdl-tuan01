function is_valid(b, r, c, val)
    for i in 1:9
        if b[r, i] == val || b[i, c] == val
            return false
        end
    end
    br = 3 * div(r - 1, 3) + 1
    bc = 3 * div(c - 1, 3) + 1
    for i in 0:2, j in 0:2
        if b[br + i, bc + j] == val
            return false
        end
    end
    return true
end

# Quét tuần tự
function solve_seq!(b, calls)
    calls[1] += 1
    for r in 1:9, c in 1:9
        if b[r, c] == 0
            for val in 1:9
                if is_valid(b, r, c, val)
                    b[r, c] = val
                    if solve_seq!(b, calls)
                        return true
                    end
                    b[r, c] = 0
                end
            end
            return false
        end
    end
    return true
end

# MRV Heuristic
function find_mrv_cell(b)
    min_c = 10
    best = nothing
    for r in 1:9, c in 1:9
        if b[r, c] == 0
            count = 0
            for val in 1:9
                if is_valid(b, r, c, val)
                    count += 1
                end
            end
            if count < min_c
                min_c = count
                best = (r, c)
            end
        end
    end
    return best
end

function solve_mrv!(b, calls)
    calls[1] += 1
    cell = find_mrv_cell(b)
    if isnothing(cell)
        return true
    end
    r, c = cell
    for val in 1:9
        if is_valid(b, r, c, val)
            b[r, c] = val
            if solve_mrv!(b, calls)
                return true
            end
            b[r, c] = 0
        end
    end
    return false
end

function main()
    board_origin = [
        5 3 0 0 7 0 0 0 0;
        6 0 0 1 9 5 0 0 0;
        0 9 8 0 0 0 0 6 0;
        8 0 0 0 6 0 0 0 3;
        4 0 0 8 0 3 0 0 1;
        7 0 0 0 2 0 0 0 6;
        0 6 0 0 0 0 2 8 0;
        0 0 0 4 1 9 0 0 5;
        0 0 0 0 8 0 0 7 9
    ]

    # Chạy Quét tuần tự
    b1 = copy(board_origin)
    calls1 = [0]
    t1 = @elapsed solve_seq!(b1, calls1)

    # Chạy MRV
    b2 = copy(board_origin)
    calls2 = [0]
    t2 = @elapsed solve_mrv!(b2, calls2)

    println("Quet tuan tu: So loi goi = ", calls1[1], ", Thoi gian = ", round(t1 * 1000, digits=2), " ms")
    println("MRV: So loi goi = ", calls2[1], ", Thoi gian = ", round(t2 * 1000, digits=2), " ms")
end

main()