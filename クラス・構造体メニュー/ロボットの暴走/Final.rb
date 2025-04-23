module DirectionUtility
  def direction_calc(current_pos, l, d)
      change_direction = {
         e: -> (l) { [1 * l, 0] },
         w: -> (l) { [-1 * l, 0] },
         s: -> (l) { [0, 1 * l] },
         n: -> (l) { [0, -1 * l] }
     }
     current_pos.zip(change_direction[d].call(l)).map { |x, y| x + y }
  end
end

class Robot
  include DirectionUtility
  LEVEL_ADD = { 1 => 1, 2 => 2, 3 => 5, 4 => 10 }
  attr_accessor :x ,:y ,:l
  def initialize(x, y, l)
      @x, @y = x, y
      @l = l
  end
  
  def move(bombs, d)
      current_pos = [@x, @y]
      @x, @y = direction_calc(current_pos, LEVEL_ADD[@l], d)
      level_up if bombs.include?([@x, @y])
  end
  
  def level_up
      return if @l == 4
      @l += 1 
  end
end

h, w, n, k = gets.chomp.split.map(&:to_i)
bombs = 10.times.map { gets.chomp.split.map(&:to_i) }
robots = n.times.map do
  detail = gets.chomp.split.map(&:to_i)
  Robot.new(detail[0],detail[1],detail[2])
end
k.times do
  robo_num, direc = gets.chomp.split
  robots[robo_num.to_i - 1].move(bombs, direc.downcase.to_sym)
end

robots.each { |robot| puts "#{robot.x} #{robot.y} #{robot.l}" }
