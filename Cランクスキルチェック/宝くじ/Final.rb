fn = gets.chomp.to_i
n = gets.chomp.to_i
arr = n.times.map { gets.chomp.to_i }

arr.each do |a|
    if a == fn
        puts "first"
    elsif a == fn + 1 || a == fn - 1
        puts "adjacent"
    elsif fn.to_s[2..] == a.to_s[2..]
        puts "second"
    elsif fn.to_s[3..] == a.to_s[3..]
        puts "third"
    else
        puts "blank"
    end
end