abc = gets.chomp.split(" ").map(&:to_i)
hArr = [{}, {}]

def convertHash(h, n)
    n.times { 
    key, value = gets.chomp.split(" ") 
    h[key.to_i] = value.to_i
}     
end

2.times { |n| convertHash(hArr[n], abc[n])}
hArr[0].sort.to_h.each { |key, value| puts "#{key} #{hArr[1][value]}"}