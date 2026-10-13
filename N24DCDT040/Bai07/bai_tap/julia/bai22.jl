mutable struct Node
    value::Int
    left::Any
    right::Any
end
Node(v) = Node(v, nothing, nothing)

function insert(g, x)
    g === nothing && return Node(x)
    if x < g.value
        g.left = insert(g.left, x)
    elseif x > g.value
        g.right = insert(g.right, x)
    end
    return g
end

function preorder(g)
    g === nothing && return Int[]
    return vcat([g.value], preorder(g.left), preorder(g.right))
end

function delete_node(g, x)
    g === nothing && return nothing
    if x < g.value
        g.left = delete_node(g.left, x)
    elseif x > g.value
        g.right = delete_node(g.right, x)
    else
        g.left === nothing && return g.right
        g.right === nothing && return g.left
        # TODO: tìm kế vị, chép giá trị rồi xoá kế vị bên phải.
        error("TODO: xoá nút hai con")
    end
    return g
end
function demo()
    root = nothing
    for x in [45, 15, 79, 12, 38]
        root = insert(root, x)
    end
    root = delete_node(root, 12)
    println(preorder(root))
end
demo()
