input = readlines("D03.txt")
priorities = vcat('a':'z', 'A':'Z')

function D03P1(input)
    sum = 0
    for e in input
        first = only.(split(e[1:Int(length(e) / 2)], ""))
        second = only.(split(e[Int(length(e) / 2)+1:end], ""))
        sum += findfirst(x -> x == intersect(first, second)[1], priorities)
    end
    sum
end

function D03P2(input)
    sum = 0
    for i =1:3:length(input)
        first = only.(split(input[i], ""))
        second = only.(split(input[i+1], ""))
        third = only.(split(input[i+2], ""))
        sum += findfirst(x -> x == intersect(first, second, third)[1], priorities)
    end
    sum
end

println(D03P1(input))
println(D03P2(input))
