def cung_cay(a,b):
    if a is None or b is None: return a is None and b is None
    if a[0]!=b[0]: return False
    # TODO: kiểm cặp trái và cặp phải tương ứng.
    raise NotImplementedError("so hình dạng con")
def la_cay_con(g,b):
    if b is None: return True
    if g is None: return False
    # TODO: cung_cay tại g hoặc tìm ở hai con.
    raise NotImplementedError("tìm cây con nguyên vẹn")
a=(8,(3,None,(6,None,None)),(10,None,None))
b=(3,None,(6,None,None));c=(3,None,None)
print("Mong đợi:B=True,C=False; hai rỗng=True")
try:
    print(la_cay_con(a,b),la_cay_con(a,c),cung_cay(None,None))
except NotImplementedError as e: print("TODO:",e)
