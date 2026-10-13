function tim(g,x)
    while g!==nothing
        k,trai,phai=g
        x==k && return true
        error("TODO: chọn con theo so sánh")
    end
    return false
end
bst=(1,nothing,(2,nothing,(3,nothing,(4,nothing,(5,nothing,nothing)))))
avl=(3,(2,(1,nothing,nothing),nothing),(4,nothing,(5,nothing,nothing)))
tap=Set([1,2,3,4,5]);truy_van=[0,1,3,5,6]
println("Mong đợi cả ba:[false,true,true,true,false]")
try
    println("BST:",[tim(bst,x) for x in truy_van])
    println("AVL:",[tim(avl,x) for x in truy_van])
    println("Set:",[x in tap for x in truy_van])
catch e; println(sprint(showerror,e)); end
