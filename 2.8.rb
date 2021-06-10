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

def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

puts some_method
#=>これはヒアドキュメントです。
# <<- を使うと最後の識別子をインデントさせることができます。

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと内部文字列のインデント部分が無視されます。
  TEXT
end

puts some_method
#=>これはヒアドキュメントです。
# <<~を使うと内部文字列のインデント部分が無視されます。

name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a
#=> ようこそ、#{name}さん！
# 以下のメッセージをご覧ください。

name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT
puts a
#=> ようこそ、Aliceさん！
# 以下のメッセージをご覧ください。

#ヒアドキュメントを直接引数として渡す(prependは渡された文字列を先頭に追加するメソッド)
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a
#=> Java
# PHP
# Ruby

#ヒアドキュメントで作成した文字列に対して、直接 upcase メソッドを呼び出す
#(upcaseは文字列をすべて大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b
#=> HELLO,
# GOOD-BYE.

#2.8.4 フォーマットを指定して文字列を作成する

sprintf('%0.3f',1.2)#=>"1.200"

'%0.3f'%1.2#=>"1.200"

sprintf('%0.3f + %0.3f', 1.2, 0.48)#=>"1.200 + 0.480"
'%0.3f + %0.3f' % [1.2, 0.48]#=>"1.200 + 0.480"

#2.8.5 その他、文字列作成のいろいろ

#数値を文字列に変換する
123.to_s#=>"123"

#配列を連結して1つの文字列にする
[10,20,30].join#=>"102030"

#*演算子を使って文字列を繰り返す
'Hi!' * 10 #=>"Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!"

#String.newを使って新しい文字列を作る(あまり使わない)
String.new('hello')#=>"hello"

"\u3042\u3044\u3046" #=>"あ　い　う"

#2.8.6 文字と文字列の違いはない
#1文字でも文字列
'a'#=>"a"

#2文字以上でも文字列
'abc'#=>"abc"

#0文字でも文字列
""#=>""
?a#=>"a"
