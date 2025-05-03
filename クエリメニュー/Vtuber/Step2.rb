n, k = gets.split.map(&:to_i)
n.times { gets }
a = []
k.times {
    year, name = gets.chomp.split
    a << [year.to_i, name]
}
aaa = a.sort
aaa.each { |aa| puts aa[1]}