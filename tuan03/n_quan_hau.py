def is_safe(x, row, col):
    for i in range(1, row):
        if x[i] == col or abs(x[i] - col) == abs(i - row):
            return False
    return True

def try_queen(row, n, x, nodes, solutions):
    nodes[0] += 1
    for col in range(1, n + 1):
        if is_safe(x, row, col):
            x[row] = col
            if row == n:
                solutions.append(list(x[1:]))
            else:
                try_queen(row + 1, n, x, nodes, solutions)

n = int(input("Nhập n: "))
x = [0] * (n + 1)
nodes = [0]
solutions = []
try_queen(1, n, x, nodes, solutions)

print(f"Số nút đã duyệt: {nodes[0]}")
print(f"Số lời giải: {len(solutions)}")
if solutions:
    print(f"Bàn cờ lời giải đầu tiên: {solutions[0]}")
 
