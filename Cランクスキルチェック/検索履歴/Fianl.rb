n = gets.to_i
arr = []
n.times {
    str = gets.chomp
    if arr.include?(str)
        arr.delete(str)
    end
        arr.unshift(str)
}
puts arr
