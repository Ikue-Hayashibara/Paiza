n = gets.to_i
ab = n.times.map { gets.split(' ').map(&:to_i)}
ab.sort.reverse.each { |pair| puts pair.join(' ') }