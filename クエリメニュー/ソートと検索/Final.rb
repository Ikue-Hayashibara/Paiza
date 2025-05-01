n, k, pa = gets.chomp.split.map(&:to_i)
arr = n.times.map { gets.chomp.to_i } << pa
k.times {
    input = gets.chomp
    if input == "sorting"
        puts arr.sort.index(pa) + 1
    else
        arr << input.split[1].to_i
    end
}