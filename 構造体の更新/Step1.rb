n = gets.chomp.to_i
n.times do 
    User = Struct.new(:nickname, :old, :birth, :state)
    user_data = gets.chomp.split(" ")
    user = User.new(*user_data)
    puts "#{user.class}{"
    user.members.each { |m| puts "#{m} : #{user[m]}" }
    puts "}"
end