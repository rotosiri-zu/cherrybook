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