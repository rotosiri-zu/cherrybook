# 4.5 範囲(Range)
1..5
1...5
'a'..'e'
'a'...'e'
(1..5).class #=>Range
(1...5).class #=>Range
# ..を使うと5が範囲に含まれる(1以上5以下)
range = 1..5
range.include?(0) #=>false
range.include?(1) #=>true
range.include?(4.9) #=>true
range.include?(5) #=>true
range.include?(6) #=>false

#...を使うと5が範囲に含まれない(1以上5未満)
range = 1...5
range.include?(0) #=>false
range.include?(1) #=>false
range.include?(4.9) #=>true
range.include?(5) #=>false
range.include?(6) #=>false

# ()で囲まずにメソッドを呼び出すとエラーになる
1..5include?(1) #=>NoMethodError:undefined method 'include' for5:Fixnum
#()で囲めばエラーにならない
(1..5).include?(1)#=>true

# 4.5.1 配列や文字列の一部を抜き出す
a = [1,2,3,4,5]
# 2番目から4番目までの要素を
a[1..3]#=>[2,3,4]

a = 'abcdef'
# 2文字目から4文字目までを抜き出す
a[1..3]#=>"bcd"

# 4.5.2 n以上m以下、n以上m未満の判定をする
# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end
liquid?(-1)#=>false
liquid?(0)#=>true
liquid?(99)#=>true
liquid?(100)#=>false

# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
liquid?(-1)#=>false
liquid?(0)#=>true
liquid?(99)#=>true
liquid?(100)#=>false

# 4.5.3 case文で使う
def charge(age)
  case age
  # 0歳から5歳まで
  when 0..5
   0
  # 6歳から12歳までの場合
  while 6..12
   300
  # 13歳から18歳までの場合
  while 13..18
   600
  # それ以外の場合
  else
    1000
  end
end
charge(3) #=>0
charge(12) #=>300
charge(16) #=>600
charge(25) #=>1000

# 4.5.4 値が連続する配列を作成する
(1..5).to_a #=>[1,2,3,4,5]
(1...5).to_a #=>[1,2,3,4]

('a'..'e').to_a #=>["a","b","c","d","e"]
('a'...'e').to_a #=>["a","b","c","d"]

('bad'..'bag').to_a #=>["bad","bac","baf","bag"]
('bad'...'bag').to_a #=>["bad","bac","baf"]

[*1..5] #=>[1,2,3,4,5]
(*1...5) #=>[1,2,3,4]

# 4.5.5 繰り返し処理を行う
# 範囲オブジェクトを配列に変換してから繰り返し処理を行う

numbers = (1..4).to_a
sum = 0
numbers.each{ |n| sum += n }
sum #=>10

sum = 0
# 範囲オブジェクトに対して直接eachメソッドを呼び出す
(1..4).each{ |n| sum += n }
sum #=>10

numbers = []
# 1から10まで2つ飛ばしで繰り返し処理を行う
(1..10).step(2){ |n| numbers << n }
numbers #=>[1,3,5,7,9]