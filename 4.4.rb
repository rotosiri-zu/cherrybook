# 4.4 ブロックを使う配列のメソッド
# 4.4.1 map/collect
numbers = [1,2,3,4,5]
new_numbers = []
numbers.each{ |n| new_numbers<<n*10 }
new_numbers #=>[10,20,30,40,50]

numbers = [1,2,3,4,5]
# ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map{|n| n*10 }
new_numbers #=>[10,20,30,40,50]

# 4.4.2 selectfind_all/reject
numbers = [1,2,3,4,5,6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select{ |n|n.even? }
even_numbers #=>[2,4,6]

numbers = [1,2,3,4,5,6]
# 3の倍数を除外する(3の倍数以外を集める)
non_multiples_of_three = numbers.reject{ |n| n % 3 = 0 }
non_multiples_of_three #=>[1,2,4,5]

# 4.4.3 find/detect
numbers = [1,2,3,4,5,6]
# ブロックの戻り値が最初に真になった要素を返す
even_number = numbers.find{ |n| n.even? }
even_number #=>2

# 4.4.4 inject/reduce
nujmbers = [1,2,3,4]
sum = 0
numbers.each { |n| sum += n }
sum #=>10

nujmbers = [1,2,3,4]
sum = numbers.inject(0){ |result, n| result + n }
sum #=>10

['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun'){ |result, s| result + s }
#=>"SunMonTueWedThuFriSat"

# 4.4.5 &とシンボルを使ってもっと簡潔に書く
# このコードは、
['ruby', 'java', 'perl'].map { |s| s.upcase } #=>["RUBY","JAVA","PERL"]
# こう書き換える
['ruby', 'java', 'perl'].map(&:upcase) #=>["RUBY","JAVA","PERL"]

# このコードは、
[1,2,3,4,5,6].select { |n| n.odd? } #=>[1,3,5]
# こう書き換える
[1,2,3,4,5,6].select(&.odd?)
#=>[1,3,5]

# ブロックの中でメソッドではなく演算子を使っている
[1,2,3,4,5,6].select { |n| n % 3 == 0 }

# ブロック内のメソッドで引数を渡している
[9,10,11,12].map { |n| n.to_s(16) }

# ブロックに中で複数の文を実行している
[1,2,3,4].map do |n|
  m = n * 4
  m.to_s
end
