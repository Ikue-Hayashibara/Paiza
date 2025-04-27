n , k = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i }
puts arr.include?(k) ? "YES" : "NO"