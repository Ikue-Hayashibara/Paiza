arr = gets.chomp.split(":")
hour = arr[0].to_i
minute = (arr[1].to_i + 30)
afterHour = (minute >= 60 ? (hour + 1) % 24 : hour % 24).to_s
afterMinute = (minute % 60).to_s
puts "#{afterHour.rjust(2, "0")}:#{afterMinute.rjust(2, "0")}"
