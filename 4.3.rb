# 4.3 ブロック
# 参考 : javeの繰り返し処理
int numbers[] = {1,2,3,4};
int sum = 0
for(int i = 0;i<numbers.length;i++)
  {
    sum+= numbers[i];
  }
  System.out.println(sum);//=>10

int numbers[] = {1,2,3,4}
int sum = 0;
for(int n;numbers){
  sum += n;
}
System.out.println(sum);//=>10

#4.3.2 rubyの繰り返し処理
numbers = [1,2,3,4]
sum = 0
numbers.ecah do |n|
  sum += n
end
sum #=>10

#4.3.3 配列の要素を削除する条件を自由に指定する
a = [1,2,3,1,2,3]
# 配列から値が2の要素を削除する
a.delete(2)
a #=>[1,3,1,3]

a = [1,2,3,1,2,3]
# 配列から値が奇数の要素を削除する
a.delete_if do |n|
  n.odd?
end
a #=>[2,2]

# ブロック引数とブロック内の変数
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum += n
end

# ブロック引数の名前は何でも良い
numbers.each do |i|
  sum += i
end

numbers.each do |number|
  sum += number
end

numbers.each do |element|
  sum += element
end

numbers.each do
  sum += 1
end

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ?n*10:n
  sum += sum_value
end
sum #=>64

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  # sum_valueはブロック内で初めて登場した変数なのでブロック内でのみ有効
  sum_value = n.even? ?n*10:n
  sum += sum_value
end
# ブロックの外に出ると、sum_valueは参照できな
sum_value
#=> NameError: undefined localvariable or method 'sum_value' for main:Object

numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ?n*10:n
  # sumはブロックの外で作成されたので、ブロックの内部でも参照可能
  sum += sum_value
end

#4.3.5 do...endと{}
numbers = [1,2,3,4]
sum = 0
# ブロックをあえて改行せずに書く
numbers.each do |n| sum += n end
sum #=>10

numbers = [1,2,3,4]
sum = 0
# do...endの代わりに{}を使う
numbers.each{|n| sum += n}
sum #=>10

numbers = [1,2,3,4]
sum = 0
# {}でブロックを作り、なおかつ改行を入れる
numbers.each{|n| 
  sum += n
}
sum #=>10
