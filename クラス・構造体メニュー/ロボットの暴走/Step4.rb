class SuperCar
  attr_accessor :l, :f, :d
  def initialize(l, f)
      @l = l
      @f = f
      @d = 0
  end
  
  def run
      return if @l <= 0
      @l -= 1
      @d += f
  end
end

class SuperSuperCar < SuperCar
  def fly
      if @l < 5
          run
      else
          @l -= 5
          @d += @f ** 2
      end
  end
end

class SuperSuperSuperCar < SuperSuperCar
  def fly
      if @l < 5
          run
      else
          @l -= 5
          @d += 2 * (@f ** 2)
      end
  end
  
  def teleport
      if @l < (f ** 2)
          fly
      else
          @l -= @f ** 2
          @d += @f ** 4
      end
  end
end

cars_hash = {
  supercar: -> (l, f) { SuperCar.new(l, f) },
  supersupercar: -> (l, f) { SuperSuperCar.new(l, f) },
  supersupersupercar: -> (l ,f) { SuperSuperSuperCar.new(l, f) }
}

n, k = gets.chomp.split.map(&:to_i)
cars = n.times.map do 
  car = gets.chomp.split
  kind = car.shift.to_sym
  cars_hash[kind].call(car[0].to_i,car[1].to_i)
end

k.times do
 cars_num, event = gets.chomp.split
 cars[cars_num.to_i - 1].send(event)
end

cars.each { |car| puts car.d }