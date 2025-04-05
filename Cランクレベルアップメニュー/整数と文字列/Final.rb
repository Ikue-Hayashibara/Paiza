n = gets.chomp.to_i

n.times do
    t, h, m = gets.chomp.split(" ")
    th, tm = t.split(":").map(&:to_i)
    th += h.to_i
    tm += m.to_i
    th = tm >= 60 ? (th + 1) % 24 : th % 24
    tm = tm % 60

    puts "#{th.to_s.rjust(2,"0")}:#{tm.to_s.rjust(2,"0")}"
end