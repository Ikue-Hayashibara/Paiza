n, k = gets.chomp.split.map(&:to_i)
h = {}
process = { 
    join: -> (input) { h[input[0]] = input[1] },
    leave: -> (num) { h.delete(num[0]) },
    call: -> (num) { puts h[num[0]] }
}
n.times.map { 
    key, value = gets.chomp.split
    h[key] = value
}
k.times {
    input = gets.chomp.split
    process[input[0].to_sym].call(input[1..]) 
}