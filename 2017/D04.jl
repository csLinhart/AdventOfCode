input = split.(readlines("D04.txt"), " ")

D04P1(input) =
    length(filter(x -> length(x) == length(unique(x)), input))

D04P2(input) =
    length(filter(x -> length(x) == length(unique(sort.(collect.(x)))), input))

println(D04P1(input))
println(D04P2(input))