input = parse.(Int, split(readline("D07.txt"), ','))

function D07(input)
    range = minimum(input):maximum(input)
    s1 = map(x -> sum(abs.(input .- x)), range)
    s2 = map(x -> sum(map(x -> sum(1:x), abs.(input .- x))), range)
    minimum.((s1, s2))
end

println(D07(input))