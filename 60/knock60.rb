# No. 60 円
# 中心座標を入力させ、横600縦400のウィンドウを開き、入力した座標に半径50の円を描くプログラムを作成せよ。
#
# 【実行例、下線部は入力例、実行結果は図の通り】
# $ ./knock60
# 円の中心座標を入力: 200 150
# $
#

require 'ruby2d'

x_point, y_point = $stdin.gets.chomp.split(' ').map(&:to_i)

set title: "knock60", background: 'white'

Circle.new(
  x: x_point,
  y: y_point,
  color: 'black'
)

show
