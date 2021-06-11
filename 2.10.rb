#2.10 真偽値と条件分岐についてもっと詳しく
# 2.10.1 &&や||の戻り値と評価を終了するタイミング

#Alice、Bob、Carolと順に検索し、最初に見つかったユーザ(nilまたはfalse以外の値)を変数に格納する
user = find_user('Alice') || find_user('Bob')||find_user('Carol')

#正常なユーザであればメールを送信する(左辺が偽であればメール送信は実行されない)
user.valid?&&send_email_to(user)

