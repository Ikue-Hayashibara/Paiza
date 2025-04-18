# 特定期間の西暦年と昭和年の対応表を作る
# 1行目：開始年
# 2行目：期間
# 昭和年 = 西暦年 - 1925
# 出力：西暦XXXX年は、昭和YY年です。

seireki = gets.to_i
years = gets.to_i
for i in seireki..seireki + years - 1
    showa = i - 1925
    puts "西暦#{i}年は、昭和#{showa}年です。"
end