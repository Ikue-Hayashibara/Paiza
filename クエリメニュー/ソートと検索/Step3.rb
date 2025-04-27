require "set"
n , k = gets.chomp.split.map(&:to_i)
arr1 = n.times.map { gets.chomp.to_i }
set1 = arr1.to_set
arr2 = k.times.map { set1.include?(gets.chomp.to_i) ? "YES" : "NO" }
puts arr2
  