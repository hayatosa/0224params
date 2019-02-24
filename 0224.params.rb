params = {name:"sato", mail:"hoge@.com", address:"tokyo"}

# データの書き換え
params[:name] = "yamada"

# データの追加
params[:age] = 50

# ハッシュでの繰り返し処理
params.each do |key, value|
  puts "キー#{key}"
  puts "バリュー#{value}"
end

#ブロック引数の数を1つにするとハッシュの中にキーとバリューが格納される。
params.each do |key_value|
  puts key_value[1]
end

# ハッシュのサイズを調べる
puts params = {name:"sato", mail:"hoge@.com", address:"tokyo"}.size
puts params = {}.size

#要素の削除
params = {name:"sato", mail:"hoge@.com", address:"tokyo"}
params.delete(:name)

p params

params = {name:"sato", mail:"hoge@.com", address:"tokyo"}
# 指定したキーがなかったときに任意のメッセージを表示
puts params.delete(:age) {|key| "#{key}というキーは存在しないため削除できませんでした"}

# ハッシュはキーとバリューの両方をシンボルにできる。上がよく使う。
puts params = {name: :tanaka, address: :tokyo, mail: :hoge}
puts params = {:name => :tanaka, :address => :tokyo, :mail => :hoge}

# キーだけを取り出す
params = { name: "Tanaka", email: "hoge@co.ne.jp", address: "Saitama" }
params.each_key do |key|
  puts "キーのみ:#{key}"
end

# キーとバリューの入れ替え
puts params.invert
params.each_key do |key|
  puts "キーのみ:#{key}"

end
