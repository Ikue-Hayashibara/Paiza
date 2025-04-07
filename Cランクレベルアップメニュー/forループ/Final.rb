n, m, k = gets.chomp.split(" ")
pointArr = []
n.to_i.times { 
    answer = gets.chomp.split(" ")
    pointArr = answer.map { |a| k == a }
    puts pointArr.count(true)
}
