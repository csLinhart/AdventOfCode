input = readlines("D04.txt")

function D04P1(input)
    sum1 = sum2 = 0
    for e in input
        inp = split.(split(e, ','), '-')
        first = parse.(Int, inp[1])
        second = parse.(Int, inp[2])
        if ((first[1] <= second[1] && first[2] >= second[2]) || (first[1] >= second[1] && first[2] <= second[2]))
            sum1 += 1
        end
        if ((first[1] <= second[1] && first[2] >= second[1]) || (first[1] >= second[1] && first[1] <= second[2]))
            sum2 += 1
        end
    end
    (sum1, sum2)
end

println(D04P1(input))
