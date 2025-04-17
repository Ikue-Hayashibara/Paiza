class Employee
  attr_reader :num, :name
  
  def initialize(num, name)
      @num = num
      @name = name
  end
  
  def get_num
      puts num
  end
  
  def get_name
      puts name
  end
end

n = gets.chomp.to_i
command = n.times.map { gets.chomp.split(" ") }
user_class_arr = []
command.each_with_index do |c, i| 
  if c.include?("make")
      user_class_arr << Employee.new(c[1].to_i,c[2])
  elsif c.include?("getnum")
      user_class_arr[c[1].to_i - 1].get_num
  else
      user_class_arr[c[1].to_i - 1].get_name
  end
end