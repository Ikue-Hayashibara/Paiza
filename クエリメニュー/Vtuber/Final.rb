class VtuberSystem
  attr_accessor  :members, :superchat_list
  def initialize
      @members = []
      @superchat_list = {}
      @event = {
          give: -> (name, money) { give_money(name, money) },
          join: -> (name) { join_membership(name) }
      }
  end
  
  def give_money(name, money)
      if !@superchat_list.key?(name)
          @superchat_list[name] = 0
      end
      @superchat_list[name] += money.to_i
  end
  
  def join_membership(name)
      @members << name
  end
  
  def run_event(args)
      if args.size == 3
          name = args[0]
          @event[args[1].to_sym].call(name)
      else
          name, money = [args[0], args[2]]
          @event[args[1].to_sym].call(name, money)
      end
      
  end
end

vs = VtuberSystem.new

n = gets.chomp.to_i
n.times { 
  vs.run_event(gets.chomp.split)
}
puts vs.superchat_list.sort_by { |key, value| [value, key]}.reverse.to_h.keys
puts vs.members.sort

