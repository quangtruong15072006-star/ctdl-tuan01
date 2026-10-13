TREE = [[4,7],[2,9]]
function minimax(node,is_max=true)
    node isa Number && return node
    best=is_max ? -Inf : Inf
    for child in node
        value=minimax(child,!is_max)
        error("TODO: best lấy max/min các con")
    end
    return best
end
function alpha_beta(node,is_max=true,alpha=-Inf,beta=Inf)
    node isa Number && return node
    best=is_max ? -Inf : Inf
    for child in node
        value=alpha_beta(child,!is_max,alpha,beta)
        error("TODO: cập nhật best và alpha/beta")
        if beta<=alpha
            error("TODO: break bỏ con chưa xét")
        end
    end
    return best
end
# Sau TODO: (4,4).
println((minimax(TREE),alpha_beta(TREE)))
