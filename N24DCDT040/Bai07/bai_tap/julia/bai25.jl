function push_max!(a, value)
    push!(a, value)
    i = length(a)
    while i > 1
        p = div(i, 2)
        a[p] >= a[i] && break
        a[p], a[i] = a[i], a[p]
        i = p
    end
end
function pop_max!(a)
    isempty(a) && error("Đống rỗng")
    result = a[1]
    last = pop!(a)
    isempty(a) && return result
    a[1] = last
    i = 1
    while 2*i <= length(a)
        left = 2*i
        right = left + 1
        child = left
        # TODO: nếu right tồn tại và a[right] > a[left], chọn child = right.
        a[i] >= a[child] && break
        a[i], a[child] = a[child], a[i]
        i = child
    end
    return result
end
a = [20, 9, 15, 3, 7, 1, 2]
push_max!(a, 18)
println("Sau thêm: ", a)
println("Lấy: ", pop_max!(a), " còn: ", a)
# TODO: thêm ca mà con phải lớn hơn con trái.
