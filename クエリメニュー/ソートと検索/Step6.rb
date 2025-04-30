n, k = gets.chomp.split.map(&:to_i)
h = {}
n.times.map { 
    key, value = gets.chomp.split
    h[key] = value
}
k.times { puts h[gets.chomp] }