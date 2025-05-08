class DepartmentsSystem
  attr_accessor :departments_list
  def initialize
      @departments_list = {}
  end

  def entry_department_name(name)
      @departments_list[name] = {}
  end

  def set_order(department_name, order_num, expense)
      @departments_list[department_name][order_num] = expense.to_i
  end
end

ds = DepartmentsSystem.new

n, k = gets.chomp.split.map(&:to_i)
n.times { 
  department_name = gets.chomp
  ds.entry_department_name(department_name)
}
k.times {
  department_name, order_num, expense = gets.chomp.split
  ds.set_order(department_name, order_num, expense)
}

ds.departments_list.each { |key, value|
  puts key
  value.each { |k, v| puts "#{k} #{v}" }
  puts "-----"
}
