# 範囲(Range)
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