n = gets.to_i # ←　活用なし
puts gets.chomp.split(" ").select { |n| n.to_i % 3 == 0}.length
