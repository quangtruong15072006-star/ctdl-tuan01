def truoc(g):
    stack,out=([g] if g else []),[]
    while stack:
        nut=stack.pop()
        # TODO: xuất gốc; đẩy con theo LIFO.
        raise NotImplementedError("duyệt trước vòng lặp")
    return out
def giua(g):
    stack,out=[],[]
    while g is not None or stack:
        # TODO: hạ trái, pop nút chờ, xuất, sang phải.
        raise NotImplementedError("duyệt giữa vòng lặp")
    return out
def sau(g):
    stack,out=([(g,False)] if g else []),[]
    while stack:
        nut,da_mo=stack.pop()
        # TODO: cờ phân biệt lên lịch con và xuất gốc.
        raise NotImplementedError("duyệt sau vòng lặp")
    return out
g=(8,(3,None,None),(10,None,None))
print("Mong đợi:[8,3,10];[3,8,10];[3,10,8]")
for ham in [truoc,giua,sau]:
    try: print(ham(g))
    except NotImplementedError as e: print("TODO:",e)
