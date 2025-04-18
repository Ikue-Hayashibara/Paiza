class Aaa
  @@sta = 5
  def self.kkk
    @@sta
  end
end

class Bbb < Aaa
  def hello
    
  end
end

puts Aaa.kkk