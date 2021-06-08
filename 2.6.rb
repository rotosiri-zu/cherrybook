#2.6 メソッドの定義

def add(a,b)
  a + b
end
add(1,2)#=> 3

#メソッド名はスネークケースで書く
def Hello
  'Hello, world!'
end

#キャメルケースは使わない(エラーにはならないが一般的ではない)
def helloWorld
  'Hello, world!'
end

#アンダースコアでメソッド名を書き始める(アンダースコアで始まることは少ない)
def _hello_world
  'Hello, world!'
end

#メソッド名に数字を入れる
def hello_world_2
  'Hello, world!'
end

#数字から始まるメソッド名は使えない(エラーになる)
def 2_hello_world
  'Hello, world!'
end  

#メソッド名をひらがなにする(一般的ではない)
def あいさつする
  'はろー、わーるど！'
end
#ひらがなのメソッドを呼び出す
あいさつする#=> "はろー、わーるど！"

#2.6.1 メソッドの定義
def add(a,b)
  #returnも使えるが、使わないほうが主流
  return a + b
end
add(1,2)#=> 3

def greeting(country)
#"こんにちは"または"hello"がメソッドの戻り値になる
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting('japan')#=>"こんにちは"
greeting('us') #=>"hello"

def greeting(country)
#countryがnilならメッセージを返してメソッドを抜ける
#(nil?はオブジェクトがnilの場合にtrueを返すメソッド)
return 'countryを入力してください'if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting(nil) #=>"countryを入力してください"
greeting('japan')#=>"こんにちは"

#2.6.2 メソッド定義における引数の()
#引数がない場合は()を付けないほうが主流
def greeting
  'こんにちは'
end

#()を付けても良いが、省略されることが多い
def greeting()
  'こんにちは'
end

#()を省略できるが、引数がある場合は()をつけることの方が多い
def greeting country
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end  
end