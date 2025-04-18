class Employee
  attr_accessor :num, :name
  attr_accessor :user_arr
  
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

def change_num(origin_num, new_num, arr)
  arr[origin_num - 1].num = new_num
end

def change_name(origin_num, new_name, arr)
  arr[origin_num - 1].name = new_name
end

n = gets.chomp.to_i
command = n.times.map { gets.chomp.split(" ") }
user_class_arr = []
command.each_with_index do |c, i| 
  if c.include?("make")
      user_class_arr << Employee.new(c[1].to_i,c[2])
  elsif c.include?("getnum")
      user_class_arr[c[1].to_i - 1].get_num
  elsif c.include?("getname")
      user_class_arr[c[1].to_i - 1].get_name
  else
      c[0] == "change_num" ? send(c[0], c[1].to_i, c[2].to_i, user_class_arr) :
                             send(c[0], c[1].to_i, c[2], user_class_arr)
  end
end