class MinHeap:
    def __init__(self): self.a=[]
    def them(self,d,u):
        self.a.append((d,u))
        i=len(self.a)-1
        # TODO: đẩy lên theo ưu tiên.
        raise NotImplementedError("minheap thêm")
    def lay(self):
        if not self.a: raise IndexError("heap rỗng")
        # TODO: giữ gốc, thay cuối, đẩy xuống.
        raise NotImplementedError("minheap lấy")
def dijkstra(g,nguon):
    d={u:float("inf") for u in g}
    d[nguon]=0
    h=MinHeap();h.them(0,nguon)
    while h.a:
        du,u=h.lay()
        # TODO: bỏ bản cũ; thử du+w với từng cạnh.
        for v,w in g[u]:
            raise NotImplementedError("nới lỏng, cập nhật d, thêm heap")
    return d
g={"A":[("B",4),("C",1)],"B":[("D",1)],
   "C":[("B",2),("D",5)],"D":[]}
print("Mong đợi:A0,B3,C1,D4")
try: print(dijkstra(g,"A"))
except NotImplementedError as e: print("TODO:",e)
