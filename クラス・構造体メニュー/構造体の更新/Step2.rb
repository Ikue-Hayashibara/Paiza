n = gets.chomp.to_i
user_data = n.times.map {gets.chomp.split(" ")}
k = gets.chomp
Student = Struct.new(:name, :old, :birth, :state)
user_data.each do |data|
    user = Student.new(*data)
    if user.old == k then puts user.name end
end
