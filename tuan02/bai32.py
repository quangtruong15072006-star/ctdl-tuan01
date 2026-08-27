def la_chinh_phuong(n: int) -> bool:
    # TODO
    if n < 0:
        return False
        
    left, right = 0, 10**9
    while left <= right:
        mid = (left + right) // 2
        sq = mid * mid
        
        if sq == n:
            return True
        elif sq < n:
            left = mid + 1
        else:
            right = mid - 1
            
    return False

if __name__ == "__main__":
    n = int(input())
    print("YES" if la_chinh_phuong(n) else "NO")