n = gets.to_i
a = (n.times.map {gets.chomp.split(" ")}).to_h
puts a[gets.chomp]