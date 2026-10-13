def dem_mot_con(g):
    if g is None: return 0
    _,trai,phai=g
    a,b=trai is not None,phai is not None
    # TODO: đóng góp từ a XOR b, cộng hai cây con.
    raise NotImplementedError("đúng một con")
g=(8,(3,None,(6,None,None)),(10,None,(14,None,None)))
print("Mong đợi:2; lá:0")
try:
    print(dem_mot_con(g),dem_mot_con((1,None,None)))
except NotImplementedError as e: print("TODO:",e)
