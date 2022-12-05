input = readlines("D05.txt")
stacks =   [["D", "T", "R", "B", "J", "L", "W", "G"],
            ["S", "W", "C"],
            ["R", "Z", "T", "M"],
            ["D", "T", "C", "H", "S", "P", "V"],
            ["G", "P", "T", "L", "D", "Z"],
            ["F", "B", "R", "Z", "J", "Q", "C", "D"],
            ["S", "B", "D", "J", "M", "F", "T", "R"],
            ["L", "H", "R", "B", "T", "V", "M"],
            ["Q", "P", "D", "S", "V"]]

stacks2 = deepcopy(stacks)

function D05P1(input)
    for e in input
        sp = split(e, ' ')
        for i = 1:parse(Int, sp[2])
            t = pop!(stacks[parse(Int, sp[4])])
            push!(stacks[parse(Int, sp[6])], t)
        end
    end
    join(last.(stacks))
end

function D05P2(input)
    for e in input
        sp = split(e, ' ')
        quantity = parse(Int, sp[2])
        sourceStack = parse(Int, sp[4])
        destinationStack = parse(Int, sp[6])
        
        t = stacks2[sourceStack][end+1-quantity:end]
        stacks2[sourceStack] = stacks2[sourceStack][1:end-quantity]
        stacks2[destinationStack] = vcat(stacks2[destinationStack], t)
    end
    join(last.(stacks2))
end

println(D05P1(input))
println(D05P2(input))