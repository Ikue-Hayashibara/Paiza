arr = gets.chomp.split(" ")
new_arr = []
arr.each { |a| new_arr << (new_arr.include?(a) ? 1 : a) }
puts new_arr