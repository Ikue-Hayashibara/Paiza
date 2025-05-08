n, k = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i }
cumsum = arr.inject([]) { |sums, n| sums << (sums.last || 0) + n } 
k.times { puts cumsum[gets.to_i - 1] }