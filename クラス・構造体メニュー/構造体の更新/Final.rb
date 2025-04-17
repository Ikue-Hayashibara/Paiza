n, k = gets.chomp.split(" ").map(&:to_i)
user_data = n.times.map {gets.chomp.split(" ")}
user_updata_data = k.times.map {gets.chomp.split(" ")}

Student = Struct.new(:name, :old, :birth, :state)
user_struct_arr = []
user_data.each do |data|
    user = Student.new(*data)
    user_struct_arr << user
end
#arr = user_struct_arr.sort_by { |u| u.old }
user_updata_data.each do |data|
   user_struct_arr[data[0].to_i - 1].name = data[1]
end
user_struct_arr.each { |a| puts a.to_a.join(" ") }