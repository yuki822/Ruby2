# CSVライブラリ読み込み
require "csv"

#処理選択
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

# ユーザーの入力値取得と数字への変換
memo_type = gets.to_i

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。


#------------------------------ここから作成------------------------------

# ユーザーが1を入力した時の処理
if memo_type==1
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.chomp
  
  puts "メモしたい内容を記述してください。"
  puts "終了後、Ctrl+D を押します。"
  
  memo=STDIN.read
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{memo}"]
  end

# ユーザーが2を入力した時の処理
elsif memo_type==2
  puts "拡張子を除いたファイルを入力してください"

  file_name = gets.chomp
  
  puts "メモしたい内容を記述してください。"
  puts "終了後、Ctrl+D を押します。"

  memo=STDIN.read

  CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{memo}"]
  end
end


# 処理の条件回帰






# generateメソッドで変数にCSVを出力、CSVファイルを作成

#実装要件
#キーボードから入力した値をCSVファイルに書き出すことができる。
#ユーザーが1を入力した場合、新規ファイルを作成する。
#ユーザーが2を入力した場合、既存のファイルを編集する。

#実装のヒント
#memo.rbを作成し、その中にコードを書いていきましょう。
#下記のmemo.rbファイルを使用し、if文での条件分岐処理以降を作成していきましょう。
#CSVファイルの扱い方については、csvファイル読み込み rubyなどで検索してみましょう。