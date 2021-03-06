# その他の基礎知識
# 2.12.1 ガベージコレクション(GC)
  #rubyは使用されなくなったオブジェクトを回収し、自動的にメモリを解放します。
  #このため、プログラマはメモリ管理を意識する必要がありません。このしくみをガベージコレクション(GC)と言います。
# 2.12.2 エイリアスメソッド
# lengtgh も size も、 どちらも文字数を返す
'hello'.length #=>5
'hello'.size #=>5
# 2.12.3 式(Expression)と分(Statement)
# if 文が値を返すので変数に代入できる
a = 
  if true
    '真です'
  else
    '偽です'
  end
a #=>"真です"

# メソッドの定義も実は値を（シンボル）を返している
b = def foo;end
b #=>:foo

# 2.12.4 疑似変数
#nilとtrueとfalseこのほかにも

# .self: オブジェクト自身
# ._FILE_: 現在のソースファイル名
# ._LINE_: 現在のソースファイル名中の行番号
# ._ENCODING_: 現在のソースファイルのスクリプトエンコーディング

# 2.12.5 参照の概念を理解する

# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
a.object_id #=> 70182231931400
b.object_id #=> 70182236321960

#cにbを代入する。bとcはどちらも同じオブジェクト
c = b
c.object_id #=> 70182236321960

# メソッドの引数にcを渡す。引数として受け取ったdはb,cと同じオブジェクト
def m(d)
  d.object_id
end
m(c) #=> 70182236321960

#equal?メソッドを使って同じオブジェクトかどうか確認しても良い(trueなら同じオブジェクト)
a.equal?(b)#=> false
b.equal?(c)#=> true

# b、cは同じオブジェクト、aは異なるオブジェクト
a = 'hello'
b = 'hello'
c = b

# 渡された文字列を破壊的に大文字に変換するメソッドを定義する
def m!(d)
  d.upcase!
end

# cにm!メソッドを適用する
m!(c)

# b、cはいずれも大文字になる
b #=> "HELLO"
c #=> "HELLO"

# aは別のオブジェクトなので大文字にならない
a #=> "hello"

# 2.12.6 組み込みライブラリ、標準ライブラリ、gam
# stringクラスや、数値のintegerクラスは組み込みライブラリ
# 標準ライブラリ Dateクラスなど
# gam 外部ライブラリ

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
Date.today #=> #<Date: 2017-04-07((2457851j,Os,On),+Os,2299161j)>

require './2.5.3'

# 2.12.8 load
# requireは1回しかライブラリやrbファイルを読み込まない

load'./2.5.3.rb' #=>true

# loadを使うと無条件に再読み込みできる(なのでファイルの変更が反映される)
load'./2.5.3.rb' #=>true
# loadを使う場合は拡張子のrbを省略できない

# 2.12.9 require_relative
# foo/hello.rbから見た相対パスでbar/bye.rbを読み込む
require_relative'../bar/bye'