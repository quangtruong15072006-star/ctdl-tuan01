DATA = [["mây","nhẹ","có"], ["mây","mạnh","có"],
        ["nắng","nhẹ","có"], ["nắng","mạnh","không"]]
TREE = (1, Dict("mây"=>"có",
       "nắng"=>(2,Dict("nhẹ"=>"có","mạnh"=>"không"))))
function predict(tree,sample)
    current = tree
    while !(current isa String)
        col,branches = current
        value = sample[col]
        haskey(branches,value) ||
            throw(ArgumentError("Thuộc tính chưa gặp: "*value))
        # TODO current = branches[value]
        error("TODO: đi theo một cạnh")
    end
    return current
end
# Sau TODO: "không", rồi "có".
println(predict(TREE,["nắng","mạnh"]))
println(predict(TREE,["mây","nhẹ"]))
