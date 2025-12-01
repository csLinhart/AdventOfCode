input = readlines("D01.txt")

function D01(input)
    d = 50
    r1 = 0
    r2 = 0
    for p in input
        dp = parse(Int64, p[2:end])
        if p[1] == 'R'
            r2 += floor((d + dp) / 100)
            d = (d + dp) % 100
        else
            d2 = d
            d = (d - dp) % 100
            if d <= 0
                r2 += abs(ceil((d2 - dp) / 100))
                if d2 != 0
                    r2 += 1
                end
            end
            if d < 0
                d += 100
            end
        end
        if d == 0
            r1 += 1
        end
    end
    r1, r2
end

println(D01(input))
