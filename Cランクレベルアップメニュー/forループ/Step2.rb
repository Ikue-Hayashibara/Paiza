n = gets.to_i
puts n.times.map { gets.chomp }.include?("7") ? "YES" : "NO"

# answer = "NO"
# n.times do 
#     next if gets.chomp != "7"
#     answer = "YES"
# end
# puts answer