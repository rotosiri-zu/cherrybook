# 2.10 真偽値と条件分岐についてもっと詳しく
# 2.10.1 &&や||の戻り値と評価を終了するタイミング
1&&2&&3 #=>3
1&&nil&&3 #=>nil
1&&false&&3 #=>false
nil||false #=>nil
false||nil #=>nil
nil||false||2||3 #=>2
#Alice、Bob、Carolと順に検索し、最初に見つかったユーザ(nilまたはfalse以外の値)を変数に格納する
user = find_user('Alice') || find_user('Bob')||find_user('Carol')

#正常なユーザであればメールを送信する(左辺が偽であればメール送信は実行されない)
user.valid?&&send_email_to(user)

#2.10.2 優先順位が低いand、or、not
t1 = true
f1 = false
t1 and f1 #=>false
t1 or f1 #=>true
not t1 #=>false

高い！
  &&
  ||

  not
低い and or

t1 = true
f1 = false
!f1 || t1 #=>true
not f1||t1 #=>false

#!は||よりも優先順位が高い
!(f1)||t1
#notは||よりも優先順位が低い
not(f1||t1)

t1 = true
t2 = true
f1 = false

t1 || t2 && f1 #=>true
t1 or t2 and f1 #=>false

#&&は||よりも優先順位が高い
t1||(t2&&f1)
#andとorの優先順位は同じなので、左から順に評価される
(t1ort2)and f1

user.valid? and send_email_to user

user.valid? && send_email_to(user)

def greeting(country)
  #countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return 'countryを入力してください'
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting(nil) #=>"countryを入力してください"
greeting('japan') #=>"こんにちは" 

#2.10.3 unless文
status='error'
if status!='ok'
  '何か異常があります'
end
#=>"何か異常があります"

status='error'
unless status=='ok'
  '何か異常があります'
end
#=>"何か異常があります"

status='ok'
unless status=='ok'
  '何か異常があります'
else
  '正常です'
end
#=>"正常です"

status='error'
#unlessの結果を変数に代入する
message=
  unless status=='ok'
    '何か異常があります'
  else
    '正常です'
  end

message #=>'何か異常があります'

#unlessを修飾子として使う
'何か異常があります'unless status=='ok'
#=>'何か異常があります'

status='ok'
unless status=='ok' then
  '何か異常があります'
end
#=>'何か異常があります'

#2.10.4 case文

country = 'italy'

#if文を使う場合
if country=='japan'
  'こんにちは'
elsif country=='us'
  'Hello'
elsif country=='italy'
  'ciao'
else
  '???'
end
#=>"ciao"

#case文を使う場合
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'ciao'
else
  '???'
end
#=>"ciao"

#when筋に複数の値を指定する
country='アメリカ'
case country
when 'japan','日本'
  'こんにちは'
when 'us','アメリカ'
  'Hello'
when 'italy','イタリア'
  'ciao'
else
  '???'
end
#=>"Hello"

country='italy'

message=
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end

message#=>"ciao"

country='italy'

case country
when 'japan'then'こんにちは'
when 'us'then'Hello'
when 'italy'then'ciao'
else'???'
end
#=>"ciao"

#2.10.5 条件演算子(三項演算子)
n=11
n>10?'10より大きい':'10以下'
#=>"10より大きい"

n=11
message=n>10?'10より大きい':'10以下'
message#=>"10より大きい"