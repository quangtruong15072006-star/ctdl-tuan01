import time

board_origin = [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 0, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

def is_valid(b, r, c, val):
    for i in range(9):
        if b[r][i] == val or b[i][c] == val:
            return False
    br, bc = 3 * (r // 3), 3 * (c // 3)
    for i in range(3):
        for j in range(3):
            if b[br + i][bc + j] == val:
                return False
    return True

# Version 1: Quét tuần tự
calls_seq = 0
def solve_seq(b):
    global calls_seq
    calls_seq += 1
    for r in range(9):
        for c in range(9):
            if b[r][c] == 0:
                for val in range(1, 10):
                    if is_valid(b, r, c, val):
                        b[r][c] = val
                        if solve_seq(b):
                            return True
                        b[r][c] = 0
                return False
    return True

# Version 2: MRV
calls_mrv = 0
def find_mrv_cell(b):
    min_candidates = 10
    best_cell = None
    for r in range(9):
        for c in range(9):
            if b[r][c] == 0:
                count = sum(1 for val in range(1, 10) if is_valid(b, r, c, val))
                if count < min_candidates:
                    min_candidates = count
                    best_cell = (r, c)
    return best_cell

def solve_mrv(b):
    global calls_mrv
    calls_mrv += 1
    cell = find_mrv_cell(b)
    if not cell:
        return True
    r, c = cell
    for val in range(1, 10):
        if is_valid(b, r, c, val):
            b[r][c] = val
            if solve_mrv(b):
                return True
            b[r][c] = 0
    return False

# Run Sequential
b_seq = [row[:] for row in board_origin]
start = time.time()
solve_seq(b_seq)
t_seq = (time.time() - start) * 1000

# Run MRV
b_mrv = [row[:] for row in board_origin]
start = time.time()
solve_mrv(b_mrv)
t_mrv = (time.time() - start) * 1000

print(f"Quet tuan tu: So loi goi = {calls_seq}, Thoi gian = {t_seq:.2f} ms")
print(f"MRV: So loi goi = {calls_mrv}, Thoi gian = {t_mrv:.2f} ms")