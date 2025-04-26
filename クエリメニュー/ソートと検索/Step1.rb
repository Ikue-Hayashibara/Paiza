n , k, q = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i }.insert(k, q)
puts arr