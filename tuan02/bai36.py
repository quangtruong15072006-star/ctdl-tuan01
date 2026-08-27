import sys

def giai_thua(n: int) -> int:
    kq = 1
    for i in range(1, n + 1):
        kq *= i
    return kq

def main():
    input_data = sys.stdin.read().split()
    if not input_data:
        return
    n = int(input_data[0])
    
    LLONG_MAX = 2**63 - 1
    kq = giai_thua(n)
    
    if kq <= LLONG_MAX:
        print(kq)
    else:
        print(f"TRAN SO ({n}! = {kq} > {LLONG_MAX})")

if __name__ == "__main__":
    main()