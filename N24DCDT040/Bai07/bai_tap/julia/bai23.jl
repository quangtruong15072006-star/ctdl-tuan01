mutable struct Node
    value::Int
    left::Any
    right::Any
end
Node(v) = Node(v, nothing, nothing)

function preorder(g)
    g === nothing && return Int[]
    return vcat([g.value], preorder(g.left), preorder(g.right))
end

function build(pre, ino)
    isempty(pre) && return nothing
    pos = findfirst(==(pre[1]), ino)
    pos === nothing && error("Hai dãy không khớp")
    k = pos - 1
    g = Node(pre[1])
    g.left = build(pre[2:k+1], ino[1:k])
    # TODO: g.right = build(đoạn pre bên phải, đoạn ino bên phải).
    return g
end
pre = [50, 30, 20, 40, 70, 60, 80]
ino = [20, 30, 40, 50, 60, 70, 80]
root = build(pre, ino)
println("Cây hiện có: ", preorder(root))
println("Mục tiêu sau TODO: ", pre)
