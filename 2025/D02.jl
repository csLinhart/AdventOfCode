input = split.(split(readline("D02.txt"), ","), "-")

function D02P1(input)
    c = 0
    for r in input
        r = parse.(Int, r)
        for i = r[1]:r[2]
            d = digits(i)
            l = length(d)
            if length(d) % 2 != 0
                continue
            end
            l2 = Int(l / 2)
            if d[1:l2] == d[l2+1:end]
                c += i
            end
        end
    end
    c
end

function D02P2(input)
    c = 0
    for r in input
        r = parse.(Int, r)
        for i = r[1]:r[2]
            d = digits(i)
            l = length(d)
            l2 = l / 2
            for j = 1:1:Int(floor(l2))
                a = d[1:j]
                b = 0
                if !isinteger(l / j)
                    continue
                end
                for k = 1:Int(l / j - 1)
                    if d[k*j+1:k*j+j] != a
                        break
                    end
                    b += 1
                end
                if b == l / j - 1
                    c += i
                    break
                end
            end
        end
    end
    c
end

println(D02P1(input))
println(D02P2(input))
