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

#2.11.2 ?で終わるメソッド

#空文字列であればtrue, そうでなければ false
".empty?" #=>true
'abc'.empty? #=>false

#引数の文字列が含まれていればtrue、そうでなければfalse
'watch'.include?('at') #=>true
'watch'.include?('in') #=>false

#奇数ならtrue、偶数ならfalse
1.odd? #=>true
2.odd? #=>false

#オブジェクトがnilであればtrue、そうでなければ false
nil.nil? #=>true
'abc.nil' #=>false
1.nil? #=>false

#3の倍数なら true、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
multiple_of_three?(4) #=>false
multiple_of_three?(5) #=>false
multiple_of_three?(6) #=>true


