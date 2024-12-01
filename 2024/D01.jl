using DelimitedFiles
using StatsBase

input = readdlm("D01.txt")

function D01P1(input)
    sum(abs.(sort(input[:, 1]) - sort(input[:, 2])))
end

function D01P2(input)
    cm = countmap(input[:, 2])
    s = 0
    for i = 1:length(input[:, 1])
        s += get(cm, input[:, 1][i], 0) * input[:, 1][i]
    end
    s
end

println(D01P1(input))
println(D01P2(input))