n, k = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i }
h = {
    pop: -> (arr) { arr.shift },
    show: -> (arr) { puts arr }
}
k.times {
    input = gets.chomp
    h[input.to_sym].call(arr)
}