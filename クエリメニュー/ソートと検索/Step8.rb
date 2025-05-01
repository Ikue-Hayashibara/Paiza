n, x, pa = gets.chomp.split.map(&:to_i)
puts (n.times.map { gets.chomp.to_i } + [x, pa]).sort.index(pa) + 1