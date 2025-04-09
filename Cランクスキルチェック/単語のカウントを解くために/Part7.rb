arr = gets.chomp.split(" ")
b = arr.uniq
b += b.map { |a| arr.count(a) }
puts b  