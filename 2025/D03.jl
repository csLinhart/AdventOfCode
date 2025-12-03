input = readlines("D03.txt")

function D03(input, c)
    r = 0
    for i in input
        l = parse.(Int, split(i, ""))
        s = 0
        p = 1
        for j = c-1:-1:0
            m = findmax(l[p:end-j])
            s += m[1] * 10^j
            p = m[2] + p
        end
        r += s
    end
    r
end

println(D03(input, 2))
println(D03(input, 12))
