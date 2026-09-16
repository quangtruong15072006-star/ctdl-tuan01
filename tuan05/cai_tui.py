def cai_tui(n, W, w, v):
    f = [[0] * (W + 1) for _ in range(n + 1)]
    for i in range(1, n + 1):
        for j in range(1, W + 1):
            if j < w[i - 1]:
                f[i][j] = f[i - 1][j]
            else:
                f[i][j] = max(f[i - 1][j], f[i - 1][j - w[i - 1]] + v[i - 1])

    print("Bang f:")
    for row in f:
        print(row)

    print("Gia tri lon nhat:", f[n][W])

    # Truy vet
    i, j = n, W
    chon = []
    ten_do_vat = ["A", "B", "C", "D", "E"]
    while i > 0 and j > 0:
        if f[i][j] != f[i - 1][j]:
            chon.append(ten_do_vat[i - 1])
            j -= w[i - 1]
        i -= 1
    chon.reverse()
    print("Tap do vat duoc chon:", chon)


n = 5
W = 11
w = [2, 3, 4, 5, 7]
v = [3, 7, 9, 12, 16]
cai_tui(n, W, w, v)