h = gets.to_i
damage = { paiza: [], monster: []}
turn = 0
damage_calc = {
    paiza: lambda { |n, damage| n < 2 ? 1 : (damage[n - 1] + damage[n - 2]) },
    monster: lambda { |n, damage| n < 2 ? 1 : (damage[n - 1] * 2 + damage[n - 2]) }
}

def attack(n, attack_damage, defence_damage, calc)
    defence_damage << calc.call(n, attack_damage)
end

while true
    attack(turn, damage[:paiza], damage[:monster], damage_calc[:paiza] )
    attack(turn, damage[:monster], damage[:paiza], damage_calc[:monster] )
    h -= damage[:paiza][turn]
    turn += 1
    break puts turn if h <= 0
end