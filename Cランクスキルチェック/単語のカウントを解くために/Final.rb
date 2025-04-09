arr = gets.chomp.split(" ")
b = arr.uniq
h = b.map { |a| "#{a} #{arr.count(a)}" }
puts h