class BankSystem
  attr_accessor :list_companies_balance
  def initialize
     @list_companies_pin = {}
     @list_companies_balance = {}
  end
 
  def entry_a_Company(name, pin, balance)
     @list_companies_pin[name] = pin
     @list_companies_balance[name] = balance.to_i
  end
 
  def withdrawn(name, pin, balance)
     return if @list_companies_pin[name] != pin
     @list_companies_balance[name] -= balance.to_i
     
  end
end
bs = BankSystem.new

n, k = gets.chomp.split.map(&:to_i)
n.times { 
  name, pin, balance = gets.chomp.split
  bs.entry_a_Company(name, pin, balance)
}
k.times {
  name, pin, balance = gets.chomp.split
  bs.withdrawn(name, pin, balance)
}
bs.list_companies_balance.each { |key, value| puts "#{key} #{value}" }
