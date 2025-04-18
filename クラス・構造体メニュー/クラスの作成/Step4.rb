class Young
  attr_accessor :num, :age, :sum, :eating
  def initialize(num, age)
      @num = num
      @age = age
      @eating = {}
  end
  
  def add_ate(menu, fare)
      if menu != "alcohol"
          if eating.include?(menu)
              eating[menu] += fare
          else
              eating.merge!({menu => fare})
          end
          
      end
  end
  
  def fare_calc
      eating.inject(0) { |sum, (menu, fare)| sum += fare}
  end
end

class Adult < Young
  attr_accessor :count
  def initialize(num, age)
      super(num, age)
      @count = 0
  end
  def add_ate(menu, fare)
      if menu == "alcohol"
          self.count += 1
      elsif menu == "food"
          if self.count > 0
             fare -= 200  
          end
      end
      if eating.include?(menu)
          eating[menu] += fare
      else
          eating.merge!({menu => fare})
      end
  end
  
end

n, k = gets.chomp.split(" ").map(&:to_i)
customers = n.times.map { gets.chomp.to_i }
eat_log = k.times.map { gets.chomp.split(" ") }
obj_arr = customers.map.with_index { |customer, i| customer < 20 ? Young.new(i, customer) : Adult.new(i, customer) }

eat_log.each do |log|
 obj_arr[log[0].to_i - 1].add_ate(log[1], log[2].to_i) 
end

obj_arr.each { |obj| puts obj.fare_calc }