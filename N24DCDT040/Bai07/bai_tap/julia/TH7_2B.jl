LINES = [(1,2,3),(4,5,6),(7,8,9),(1,4,7),
         (2,5,8),(3,6,9),(1,5,9),(3,5,7)]
BOARD = collect("XOXXO O X") # O đi, trống ở 6 và 8.
function terminal(b)
    for p in ('X','O')
        any(line->all(i->b[i]==p,line),LINES) &&
            return p=='X' ? 1 : -1
    end
    return ' ' in b ? nothing : 0
end
function minimax(b,turn)
    last=terminal(b); last!==nothing && return last
    best=turn=='X' ? -2 : 2
    for i in eachindex(b)
        if b[i]==' '
            child=copy(b); child[i]=turn
            value=minimax(child,turn=='X' ? 'O' : 'X')
            error("TODO: best lấy max/min theo lượt")
        end
    end
    return best
end
function alpha_beta(b,turn,alpha=-2,beta=2)
    last=terminal(b); last!==nothing && return last
    best=turn=='X' ? -2 : 2
    for i in eachindex(b)
        if b[i]==' '
            child=copy(b); child[i]=turn
            value=alpha_beta(child,turn=='X' ? 'O' : 'X',alpha,beta)
            error("TODO: cập nhật best và alpha/beta")
            if beta<=alpha
                error("TODO: break cắt nhánh")
            end
        end
    end
    return best
end
# Sau TODO: cả hai -1; chỉ số ô Julia 1..9.
println((minimax(BOARD,'O'),alpha_beta(BOARD,'O')))
