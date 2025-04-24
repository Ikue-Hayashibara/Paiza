h , w = gets.chomp.split.map(&:to_i)
arr = h.times.map { gets.chomp }
x, y = gets.chomp.split.map(&:to_i)
arr[x][y] = arr[x][y] ==  "." ? "#" : "."
puts arr