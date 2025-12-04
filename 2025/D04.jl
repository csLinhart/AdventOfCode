input = readlines("D04.txt")

function D04(input, p)
    f = 0
    input2 = copy(input)
    while true
        input = copy(input2)
        for i = 1:length(input)
            for j = 1:length(input[i])
                if input[i][j] != '@'
                    continue
                end
                a = 0
                for k = -1:1
                    for l = -1:1
                        x = j + k
                        y = i + l
                        if x < 1 || x > length(input[i]) || y < 1 || y > length(input)
                            continue
                        end
                        if input[y][x] == '@'
                            a += 1
                        end
                    end
                end
                if a < 5
                    f += 1
                    t = collect(input2[i])
                    t[j] = '.'
                    input2[i] = join(t)
                end
            end
        end
        if input == input2 || p == 1
            break
        end
    end
    f
end

println(D04(input, 1))
println(D04(input, 2))
