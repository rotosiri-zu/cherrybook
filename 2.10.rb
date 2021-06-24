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