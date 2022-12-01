input = readlines("D01.txt")

function D01(input)
    current = 0
    allSums = []
    for calorie in input
        if (calorie != "")
            current += parse(Int, calorie)
        else
            push!(allSums, current)
            current = 0
        end
    end
    sortedSums = sort(allSums, rev=true)
    (sortedSums[1], sum(sortedSums[1:3]))
end

println(D01(input))