module SkillsUtility
  def skill_setting(status)
      keys_kind = [:f, :a]
      temp = (status.each_slice(2).to_a).map { |s| keys_kind.zip(s).to_h }
      count = 0
      keys_skill_name = 3.times.map { |n|
          if temp[n][:f] == 0
              :upper
          else
              count += 1
              "attack#{count}".to_sym
          end
          }
      self.skill = keys_skill_name.zip(temp)
  end
      
  def skill_attack(enemy, skill_num)
      # return if enemy.hp <= 0 || self.hp <= 0
      enemy.hp -= self.skill[skill_num][1][:a]
  end
  
  def skill_upper
      self.skill.each_with_index do |s, i|
          if s[0] != :upper
              s[1][:f] = (s[1][:f] - 3 >= 1) ? (s[1][:f] - 3) : 1
              s[1][:a] += 5
          end
      end
  end
  
  def self.use_skill(p1, p2, nums)
      skill_nums = {p1 => nums[0], p2 => nums[1]}
      
      return if p1.hp <= 0 || p2.hp <= 0
      if p1.skill[nums[0]][0].to_s.include?("attack") && p2.skill[nums[1]][0].to_s.include?("attack")
          if p1.skill[nums[0]][1][:f] == p2.skill[nums[1]][1][:f]
              return
          end
          attacker, deffencer = [p1, p2].minmax_by.with_index { |player, i| player.skill[nums[i]][1][:f] }
          attacker.skill_attack(deffencer, skill_nums[attacker])
          
      elsif p1.skill[nums[0]][0] == :upper
          p1.skill_upper
          p2.skill_attack(p1, nums[1])
      else
          p1.skill_attack(p2, nums[0])
          if p2.hp > 0
              p2.skill_upper
          end
      end
  
  end
end

class Player
  include SkillsUtility
  attr_accessor :hp, :skill
  def initialize(status)
      @hp = status.shift
      skill_setting(status)
  end

end

class Buttle
  attr_accessor :p1, :p2, :skill_num, :players
  def initialize(event, players)
      @players = players
      @skill_num = [event[1] - 1, event[3] - 1]
      @p1 = players[event[0] - 1]
      @p2 = players[event[2] - 1]
  end
  
  def damage_calc
      SkillsUtility.use_skill(p1, p2, skill_num)
  end
end

n, k = gets.chomp.split(" ").map(&:to_i)
players = n.times.map do 
  Player.new(gets.chomp.split(" ").map(&:to_i)) 
end

k.times do
event = gets.chomp.split(" ").map(&:to_i)
buttle = Buttle.new(event, players)
buttle.damage_calc
end

players.delete_if { |player| player.hp <= 0 }
puts players.size
