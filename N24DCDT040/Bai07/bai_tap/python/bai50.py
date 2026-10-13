TREE = [[4, 7], [2, 9]]
def minimax(node, is_max=True):
    if isinstance(node, int): return node
    best = float("-inf") if is_max else float("inf")
    for child in node:
        value = minimax(child, not is_max)
        # TODO best = max/min(best,value).
        raise NotImplementedError("TODO: ghép điểm các con")
    return best
def alpha_beta(node, is_max=True,
               alpha=float("-inf"), beta=float("inf")):
    if isinstance(node, int): return node
    best = float("-inf") if is_max else float("inf")
    for child in node:
        value = alpha_beta(child, not is_max, alpha, beta)
        # TODO cập nhật best và alpha hoặc beta.
        raise NotImplementedError("TODO: cập nhật cận")
        if beta <= alpha:
            # TODO break.
            raise NotImplementedError("TODO: bỏ con chưa xét")
    return best
# Sau TODO: 4 và 4.
print(minimax(TREE), alpha_beta(TREE))
