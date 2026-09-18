import sys

def solve_knapsack(weights, values, capacity, use_pruning):
    n = len(weights)
    items = list(zip(weights, values, [v/w for w, v in zip(weights, values)]))
    
    max_val = [0]
    best_items = [[]]
    nodes = [0]

    def upper_bound(idx, current_weight, current_val):
        bound = current_val
        total_w = current_weight
        for i in range(idx, n):
            if total_w + items[i][0] <= capacity:
                total_w += items[i][0]
                bound += items[i][1]
            else:
                bound += (capacity - total_w) * items[i][2]
                break
        return bound

    def backtrack(idx, current_weight, current_val, chosen):
        nodes[0] += 1
        if current_val > max_val[0]:
            max_val[0] = current_val
            best_items[0] = list(chosen)

        if idx >= n:
            return

        if use_pruning:
            ub = upper_bound(idx, current_weight, current_val)
            if ub <= max_val[0]:
                return

        # Nhánh chọn vật phẩm idx
        if current_weight + items[idx][0] <= capacity:
            chosen.append(idx)
            backtrack(idx + 1, current_weight + items[idx][0], current_val + items[idx][1], chosen)
            chosen.pop()

        # Nhánh không chọn
        backtrack(idx + 1, current_weight, current_val, chosen)

    backtrack(0, 0, 0, [])
    return max_val[0], best_items[0], nodes[0]

# Dữ liệu đề bài mục C (W = 14)
weights = [5, 7, 4, 3]
values = [12, 15, 8, 5]
capacity = 14

val1, items1, nodes1 = solve_knapsack(weights, values, capacity, True)
val2, items2, nodes2 = solve_knapsack(weights, values, capacity, False)

print(f"Co cat nhanh: Max Value = {val1}, Nodes = {nodes1}")
print(f"Khong cat nhanh: Max Value = {val2}, Nodes = {nodes2}")