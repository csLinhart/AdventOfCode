input = readline("D06.txt")

function D06(input, size)
    for i = size:length(input)
        if (length(unique(input[i-size+1:i])) == size)
            return i
        end
    end
end

println(D06(input, 4))
println(D06(input, 14))