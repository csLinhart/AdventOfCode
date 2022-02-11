input = File.read("D01.txt").split().map(&:to_i)

def D01(input, n)
    input.each_cons(n).map(&:sum).each_cons(2).count {|x,y| x < y }
end

puts D01(input, 1)
puts D01(input, 3)