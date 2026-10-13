mutable struct Node
    value::Int
    left::Any
    right::Any
    h::Int
end
Node(v) = Node(v, nothing, nothing, 1)

height(g) = g === nothing ? 0 : g.h
function update(g)
    g.h = 1 + max(height(g.left), height(g.right))
end
function rotate_right(y)
    x = y.left
    middle = x.right
    x.right = y
    y.left = middle
    update(y)
    update(x)
    return x
end
function rotate_left(x)
    y = x.right
    middle = y.left
    y.left = x
    x.right = middle
    update(x)
    update(y)
    return y
end
function insert_avl(g, value)
    g === nothing && return Node(value)
    if value < g.value
        g.left = insert_avl(g.left, value)
    elseif value > g.value
        g.right = insert_avl(g.right, value)
    else
        return g
    end
    update(g)
    b = height(g.left) - height(g.right)
    if b > 1 && value < g.left.value
        return rotate_right(g)
    elseif b < -1 && value > g.right.value
        return rotate_left(g)
    end
    # TODO: thêm TP/PT bằng quay con trước rồi quay g.
    abs(b) > 1 && error("TODO: hai tình huống quay kép")
    return g
end
function demo()
    root = nothing
    for value in [10, 20, 30]
        root = insert_avl(root, value)
        println("Chèn ", value, " gốc ", root.value, " cao ", root.h)
    end
end
demo()
