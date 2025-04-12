n, m = gets.chomp.split(" ").map(&:to_i)
arr = m.times.map { gets.chomp.to_i }
arr.each do |a| 
    if (a.to_f / n.to_f).round >= 1
        puts n * (a.to_f / n.to_f).round
    else
        puts n
    end
end