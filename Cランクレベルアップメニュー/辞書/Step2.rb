n = gets.to_i
h = {}
n.times { h[gets.chomp] = 0 }
m = gets.to_i
m.times { 
    key, value = gets.chomp.split(" ")
    h[key] += value.to_i
}

puts h[gets.chomp]