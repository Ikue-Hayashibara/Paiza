n, k, s = gets.chomp.split(" ").map(&:to_i)
process = n.times.map { gets.chomp.split(" ") }
current = s - 1
spell = [process[current][0]]

k.times do |num|
  answer = gets.chomp.to_i
  current = process[current][answer].to_i - 1
  spell << process[current][0]
end
puts spell.join