input = join(readlines("D03.txt"), "")

function D03P1(input)
    regex = r"mul\((\d+),(\d+)\)"
    matches = eachmatch(regex, input)

    sum = 0
    for m in matches
        x = parse(Int, m.captures[1])
        y = parse(Int, m.captures[2])

        sum += x * y
    end
    sum
end

function D03P2(input)
    regex_mul = r"mul\((\d+),(\d+)\)"
    regex_do = r"do\(\)"
    regex_dont = r"don't\(\)"

    matches_mul = eachmatch(regex_mul, input)
    matches_do = eachmatch(regex_do, input)
    matches_dont = eachmatch(regex_dont, input)

    all_matches = vcat(collect(matches_mul), collect(matches_do), collect(matches_dont))
    sort!(all_matches, by=x -> x.offset)

    sum = 0
    enabled = true
    for m in all_matches
        if occursin(regex_mul, m.match)
            if enabled
                x = parse(Int, m.captures[1])
                y = parse(Int, m.captures[2])
                sum += x * y
            end
        elseif occursin(regex_do, m.match)
            enabled = true
        elseif occursin(regex_dont, m.match)
            enabled = false
        end
    end
    sum
end

println(D03P1(input))
println(D03P2(input))
