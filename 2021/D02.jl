input = split.(readlines("D02.txt"), ' ')

function D02(input)
    h = 0
    d = 0
    for line in input
        x = parse(Int, line[2])
        if line[1] == "forward"
            h += x
        elseif line[1] == "up"
            d -= x
        elseif line[1] == "down"
            d += x
        end
    end
    h * d
end

function D02P2(input)
    h = 0
    d = 0
    a = 0
    for line in input
        x = parse(Int, line[2])
        if line[1] == "forward"
            h += x
            d += a * x
        elseif line[1] == "up"
            a -= x
        elseif line[1] == "down"
            a += x
        end
    end
    h * d
end

println(D02(input))
println(D02P2(input))