input = split.(readlines("D02.txt"), " ")

function D02P1(input)
    r = 0
    for l in input
        d = diff(parse.(Int, l))
        if all(x -> x < 4 && x > 0, d) || all(x -> x > -4 && x < 0, d)
            r += 1
        end
    end
    r
end

D02P1(input)