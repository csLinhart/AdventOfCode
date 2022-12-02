input = readlines("D02.txt")

function D01(input)
    score = [0, 0]
    for e in input
        if (e[1] == 'A' && e[3] == 'X')
            score += [4, 3]
        elseif (e[1] == 'A' && e[3] == 'Y')
            score += [8, 4]
        elseif (e[1] == 'A' && e[3] == 'Z')
            score += [3, 8]
        elseif (e[1] == 'B' && e[3] == 'X')
            score += [1, 1]
        elseif (e[1] == 'B' && e[3] == 'Y')
            score += [5, 5]
        elseif (e[1] == 'B' && e[3] == 'Z')
            score += [9, 9]
        elseif (e[1] == 'C' && e[3] == 'X')
            score += [7, 2]
        elseif (e[1] == 'C' && e[3] == 'Y')
            score += [2, 6]
        elseif (e[1] == 'C' && e[3] == 'Z')
            score += [6, 7]
        end
    end
    score
end

println(D01(input))