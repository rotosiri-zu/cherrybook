#メソッド定義についてもっと詳しく
#2.11.1 デフォルト値付きの引数

#引数なしの場合はcountryに'japan'を設定する
def greeting(country=='japan')
  if country=='japan'
    'こんにちは'
  else
    'Hello'
  end
end

greeting #=>"こんにちは"
greeting('us') #=>"Hello"

def default_args(a,b,c=0,d=0)
  "a=#{a},b=#{b},c=#{c},d=#{d}"
end
default_args(1,2) #=>"a=1,b=2,c=0,d=0"
default_args(1,2,3) #=>"a=1,b=2,c=3,d=0"
default_args(1,2,3,4) #=>"a=1,b=2,c=3,d=4"

# システム日時やほかのメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now,message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=>time: 2017-05-10 09:16:35+900,message:BAR

