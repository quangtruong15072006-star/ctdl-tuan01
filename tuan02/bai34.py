import sys

def dao_nguoc(n: int) -> int:
    is_negative = n < 0
    n = abs(n)
    
    rev = 0
    while n > 0:
        rev = rev * 10 + n % 10
        n //= 10
        
    return -rev if is_negative else rev

def main():
    input_data = sys.stdin.read().split()
    if input_data:
        n = int(input_data[0])
        print(dao_nguoc(n))

if __name__ == "__main__":
    main()