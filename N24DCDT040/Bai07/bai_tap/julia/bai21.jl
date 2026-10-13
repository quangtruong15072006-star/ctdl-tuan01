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

function inorder(g)
    g === nothing && return Int[]
    return vcat(inorder(g.left), [g.value], inorder(g.right))
end
function height(g)
    g === nothing && return 0
    return 1 + max(height(g.left), height(g.right))
end
# TODO: viết postorder(g), nối trái + phải + [g.value].
function demo()
    root = nothing
    for x in [45, 15, 79]
        root = insert(root, x)
    end
    println(preorder(root), " ", inorder(root), " ", height(root))
    # Sau TODO, gọi println(postorder(root)).
end
demo()
