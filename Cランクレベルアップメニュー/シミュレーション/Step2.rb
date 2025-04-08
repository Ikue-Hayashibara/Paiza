n = gets.to_i
a, b = gets.split(" ")
paiza, kyoko = 1, 1
count = 0
while true
    kyoko += (paiza * a.to_i)
    count += 1
    break puts count if kyoko > n
    paiza += (kyoko % b.to_i)
end