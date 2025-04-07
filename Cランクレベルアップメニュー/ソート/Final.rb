n = gets.to_i
ab = n.times.map { gets.split(' ').map(&:to_i).reverse}
ab.sort.reverse.each { |pair| puts pair.join(' ').reverse }

# n = gets.to_i
# ab = n.times.map { gets.split(' ').map(&:to_i)}
# ab.sort_by { |pair| [-pair[1], -pair[0]] }.each { |pair| puts pair.join(" ") }