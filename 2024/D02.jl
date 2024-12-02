input = split.(readlines("D02.txt"), " ")

function is_safe(levels)
    diffs = diff(levels)
    all_increasing = all(x -> x >= 1 && x <= 3, diffs)
    all_decreasing = all(x -> x <= -1 && x >= -3, diffs)
    return all_increasing || all_decreasing
end

function is_safe_with_dampener(report)
    levels = parse.(Int, report)
    if is_safe(levels)
        return true
    end
    for i in 1:length(levels)
        new_levels = deleteat!(copy(levels), i)
        if is_safe(new_levels)
            return true
        end
    end
    return false
end

function count_safe_reports_with_dampener(input)
    count = 0
    for report in input
        if is_safe_with_dampener(report)
            count += 1
        end
    end
    return count
end

function count_safe_reports(input)
    count = 0
    for report in input
        if is_safe(parse.(Int, report))
            count += 1
        end
    end
    return count
end

println(count_safe_reports(input))
println(count_safe_reports_with_dampener(input))
