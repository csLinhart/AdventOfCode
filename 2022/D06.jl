input = readline("D06.txt")

function D06(input, size)
    for i = size:length(input)
        s = input[i-size+1:i]
        if (length(unique(s)) == size)
            return i
        end
    end
end

println(D06(input, 4))
println(D06(input, 14))