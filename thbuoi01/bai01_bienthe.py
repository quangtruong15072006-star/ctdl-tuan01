import sys

def main():
    input_data = sys.stdin.read().split()
    if not input_data:
        return
    n = int(input_data[0])
    x = int(input_data[1])
    arr = [int(v) for v in input_data[2:2+n]]
    
    pos = []
    cmps = 0
    for i in range(n):
        cmps += 1
        if arr[i] == x:
            pos.append(i)
            
    if pos:
        print("POS " + " ".join(map(str, pos)))
        print(f"COUNT {len(pos)}")
    else:
        print("POS -1")
        print("COUNT 0")
    print(f"CMPS {cmps}")

if __name__ == "__main__":
    main()