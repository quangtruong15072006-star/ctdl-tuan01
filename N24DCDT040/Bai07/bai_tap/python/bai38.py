def cao(g):
    return 0 if g is None else 1+max(cao(g[1]),cao(g[2]))
def can(g):
    return 0 if g is None else cao(g[1])-cao(g[2])
def giua(g):
    return [] if g is None else giua(g[1])+[g[0]]+giua(g[2])
def quay_trai(g):
    # TODO: trả tuple mới, giữ cây con trung gian.
    raise NotImplementedError("quay trái")
def quay_phai(g):
    raise NotImplementedError("quay phải đối xứng")
def xoa_avl(g,x):
    if g is None: return None
    k,trai,phai=g
    # TODO: xóa đúng nhánh/0,1,2 con; nối lại tuple.
    # TODO: xét can(g), can(con); quay; trả gốc mới.
    raise NotImplementedError("xóa và cân bằng")
g=(4,(2,(1,None,None),(3,None,None)),(5,None,None))
print("Mong đợi:giữa[1,2,3,4],gốc2,cao3")
try:
    g=xoa_avl(g,5)
    print(giua(g),g[0],cao(g))
except NotImplementedError as e: print("TODO:",e)
