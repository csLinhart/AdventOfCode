input = parse.(Int, readlines("D05.txt"))

function D05(input, num)
    i = 1
    count = 0
    while (i <= length(input))
        count += 1
        n = input[i]
        if (n < 3)
            input[i] += 1
        else
            input[i] += num
        end
        i += n
    end
    count
end

println(D05(copy(input), 1))
println(D05(copy(input), -1))
