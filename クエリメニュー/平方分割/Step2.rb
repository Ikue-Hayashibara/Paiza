n, k = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i }
cumsum = arr.inject([0]) { |sums, n| sums << (sums.last || 0) + n } 
k.times { 
    start, last = gets.chomp.split.map(&:to_i)
    puts cumsum[last] - cumsum[start - 1]
}
