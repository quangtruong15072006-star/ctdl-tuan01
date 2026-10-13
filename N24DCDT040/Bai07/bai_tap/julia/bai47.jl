DATA = [Any[1,"không"],Any[2,"không"],Any[4,"có"],Any[7,"có"]]
function gini(labels)
    isempty(labels) && return 0.0
    return 1-sum((count(==(x),labels)/length(labels))^2
                 for x in unique(labels))
end
function best_threshold(rows)
    values = sort!(unique([r[1] for r in rows]))
    length(values)>1 || throw(ArgumentError("Không có ngưỡng"))
    best_t,best_score = nothing,Inf
    for i in 1:length(values)-1
        t = (values[i]+values[i+1])/2
        left = [r[end] for r in rows if r[1]<=t]
        right = [r[end] for r in rows if r[1]>t]
        # TODO Gini trọng số; cập nhật ngưỡng/điểm.
        error("TODO: đánh giá ngưỡng "*string(t))
    end
    return best_t,best_score
end
# Sau TODO: (3.0,0.0).
println(best_threshold(DATA))
