using RollingFunctions
input = parse.(Int, readlines("D01.txt"))

function D01(input, w)
    input = rolling(sum, input, w)
    count = 0
    last = input[1]
    for line in input
        if last < line
            count += 1
        end
        last = line
    end
    count
end

println(D01(input, 1))
println(D01(input, 3))