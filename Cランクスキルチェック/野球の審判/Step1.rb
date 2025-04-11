n = gets.to_i
calls = n.times.map{ gets.chomp }
count_calls = []
max_calls = { "strike" => { 3 => "out!"}, "ball" => { 4 => "fourball!" } }
calls.each { |a|
    count_calls << a
    puts max_calls[a][count_calls.count(a)] || "#{a}!"
}