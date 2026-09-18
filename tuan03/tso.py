import math

INF = float('inf')
# Ma trận chi phí mẫu 4 thành phố
D = [
    [0, 10, 15, 20],
    [10, 0, 35, 25],
    [15, 35, 0, 30],
    [20, 25, 30, 0]
]
N = len(D)
c_min = min(D[i][j] for i in range(N) for j in range(N) if i != j)

def solve_tsp(use_pruning):
    min_cost = [INF]
    best_path = [[]]
    nodes = [0]

    def backtrack(curr, count, cost, visited, path):
        nodes[0] += 1
        if count == N:
            if D[curr][0] != 0:
                tot = cost + D[curr][0]
                if tot < min_cost[0]:
                    min_cost[0] = tot
                    best_path[0] = path + [0]
            return

        if use_pruning:
            # Hàm cận dưới đơn giản: cost + (N - count + 1) * c_min
            lb = cost + (N - count + 1) * c_min
            if lb >= min_cost[0]:
                return

        for nxt in range(N):
            if not visited[nxt] and D[curr][nxt] != 0:
                visited[nxt] = True
                backtrack(nxt, count + 1, cost + D[curr][nxt], visited, path + [nxt])
                visited[nxt] = False

    visited = [False] * N
    visited[0] = True
    backtrack(0, 1, 0, visited, [0])
    return min_cost[0], best_path[0], nodes[0]

c1, p1, n1 = solve_tsp(True)
c2, p2, n2 = solve_tsp(False)
print(f"C_min = {c_min}")
print(f"Co cat nhanh: Cost = {c1}, Path = {p1}, Nodes = {n1}")
print(f"Khong cat nhanh: Cost = {c2}, Path = {p2}, Nodes = {n2}")