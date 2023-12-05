input = split.(readlines("D01.txt"), ' ')

function D01(input)
    result1 = result2 = 0
    for line in input
        numbers = [filter(isdigit, collect(s)) for s in line]
        result1 += parse(Int, join([numbers[1][1], numbers[1][end]]))

        line2 = replace(line[1], "one" => "one1one")
        line2 = replace(line2, "two" => "two2two")
        line2 = replace(line2, "three" => "three3three")
        line2 = replace(line2, "four" => "four4four")
        line2 = replace(line2, "five" => "five5five")
        line2 = replace(line2, "six" => "six6six")
        line2 = replace(line2, "seven" => "seven7seven")
        line2 = replace(line2, "eight" => "eight8eight")
        line2 = replace(line2, "nine" => "nine9nine")
        numbers = [filter(isdigit, collect(s)) for s in [line2]]
        result2 += parse(Int, join([numbers[1][1], numbers[1][end]]))
    end
    (result1, result2)
end

println(D01(input))