n = gets.to_i # ←意味ない
puts gets.split(" ")

# nを使うならこれとか？
n = gets.to_i
arr = gets.split(" ")
(0...n).each { |n| puts arr[n] }