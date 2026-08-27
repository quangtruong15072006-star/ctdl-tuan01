import sys

def da_sap_xep(a, nghiem_ngat=False) -> bool:
    for i in range(1, len(a)):
        if nghiem_ngat:
            if a[i] <= a[i - 1]:
                return False
        else:
            if a[i] < a[i - 1]:
                return False
    return True

def main():
    input_data = sys.stdin.read().split()
    if not input_data:
        return
    
    n = int(input_data[0])
    a = [int(x) for x in input_data[1:n + 1]]
    
    nn = da_sap_xep(a, nghiem_ngat=True)
    kg = da_sap_xep(a, nghiem_ngat=False)
    
    print(f"Nghiem ngat: {'YES' if nn else 'NO'}")
    print(f"Khong giam: {'YES' if kg else 'NO'}")

if __name__ == "__main__":
    main()