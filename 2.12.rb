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
