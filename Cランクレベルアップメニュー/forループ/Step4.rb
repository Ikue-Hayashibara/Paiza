m = gets.to_i
cArr = m.times.map { gets.chomp }
n = gets.to_i
sArr = n.times.map { gets.chomp }

cArr.each { |c|
    sArr.each { |s| puts s.include?(c) ? "YES" : "NO" }
}