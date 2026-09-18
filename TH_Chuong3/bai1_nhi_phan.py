# MSSV: N24DCDT103 | Ma ca: 6
def liet_ke(n, k):
    x = [0] * n
    dem = dem_dat = 0
    while True:
        if sum(x) == k:
            print("".join(map(str, x)))
            dem_dat += 1
        dem += 1
        i = n - 1
        while i >= 0 and x[i] == 1:
            x[i] = 0
            i -= 1
        if i < 0:
            break
        x[i] = 1
    print("So xau dat:", dem_dat)
    return dem

def main():
    print("MSSV: N24DCDT103 | Ma ca: 6")
    try:
        n = int(input("Nhap n (1..10):\n"))
        k = int(input("Nhap k (0..n):\n"))
        if 1 <= n <= 10 and 0 <= k <= n:
            dem = liet_ke(n, k)
            print("Tong so xau da duyet:", dem)
        else:
            print("Du lieu khong hop le.")
    except ValueError:
        print("Du lieu khong hop le.")

if __name__ == "__main__":
    main()