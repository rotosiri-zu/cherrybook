#2.8.1 文字列はStringクラスのオブジェクト
'abc'.class#=>String

#2.8.2 %記法で文字列を作る
#%q!!はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!#=>He said, "Don't speak."

#Q!!はダブルクオートで囲んだことと同じになる(改行文字や式展開が使える)
something = "Hello."
puts %Q!He said, "#{something}"!#=>>He said, "Hello."

#%!!もダブルクオートで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!#=>>He said, "Bye."

#?を区切り文字として使う
puts %q?He said, "Don't speak"?#=>He said, "Don't speak"

#{}を区切り文字として使う
puts %q{He said, "Don't speak."}#=>He said, "Don't speak"

#2.8.3 ヒアドキュメント(行指向文字列リテラル)

puts "Line1, 
Line2"
#=>Line1, 
# Line2

puts 'Line1,
Line2'
#=>Line1, 
# Line2

a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT

puts a
#=>これはヒアドキュメントです。
# 複数行に渡る長い文字列を作成するのに便利です。

#ヒアドキュメントの識別子としてHTMLを使う場合
# <<HTML
# <div>
# <img src="sample.jpg">
# </div>
# HTNL
