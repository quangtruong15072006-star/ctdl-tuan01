function gini_counts(counts)
    # TODO: kiểm số đếm nguyên, không âm.
    n = sum(counts)
    n == 0 && return 0.0
    s = 0.0
    for c in counts
        p = c/n
        s += p*p
    end
    return 1-s
end
for counts in [[5, 0], [3, 3], [4, 1]]
    println(counts, " ", gini_counts(counts))
end
