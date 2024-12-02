using DelimitedFiles
using StatsBase

input = readdlm("D01.txt")

function D01P1(input)
    sum(abs.(sort(input[:, 1]) - sort(input[:, 2])))
end

function D01P2(input)
    cm = countmap(input[:, 2])
    s = 0
    for l in input[:, 1]
        s += get(cm, l, 0) * l
    end
    s
end

println(D01P1(input))
println(D01P2(input))