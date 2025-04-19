class Hero
attr_accessor :status, :training_menu
        
    def initialize(status)
        keys = [:l, :h, :a, :d, :s, :c, :f]
        @status = keys.zip(status).to_h
        @training_menu = {
            muscle_training: [:h, :a],
            running: [:d, :s],
            study: :c,
            pray: :f,
        }
        
    end
    
    def training(event)
        menu, num1 = event[0], event[1].to_i
        param = training_menu[menu.to_sym]
        if event.size == 3
            num2 = event[2].to_i
            add_arr = [num1, num2]
            param.each_with_index do |par, i|
              @status[par] = @status[par].to_i + add_arr[i]
            end
        else
            @status[param] = @status[param].to_i + num1
        end
    end
    
    def level_up(nums)
        @status[:l] = @status[:l].to_i + 1
        @status.to_a[1..].to_h.each_with_index { |(key ,value), i| @status[key] = value.to_i + nums[i].to_i }
    end
end

n, k = gets.chomp.split(" ").map(&:to_i)
heroes = n.times.map { Hero.new(gets.chomp.split(" ")) }
k.times do
    event = gets.chomp.split(" ")
    current_hero = heroes[event[0].to_i - 1]
    if event[1] == "levelup"
        event.slice!(..1)
        current_hero.level_up(event)
    else
        event.shift
        current_hero.training(event)
    end
end

heroes.each { |hero|puts hero.status.values.join(" ") }