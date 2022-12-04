input = readlines("D04.txt")

function D04(input, c)
    sum = 0
    for e in input
        inp = split.(split(e, ','), '-')
        first = parse.(Int, inp[1])
        second = parse.(Int, inp[2])
        if ((first[1] <= second[1] && first[2] >= second[c]) || (first[1] >= second[1] && first[c] <= second[2]))
            sum += 1
        end
    end
    sum
end

println(D04(input, 2))
println(D04(input, 1))
