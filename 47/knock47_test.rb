# No. 47 値の入れ替え
# 異なる整数値を2つ入力し、それぞれ別の変数に格納する。そして、それらの変数の値を入れ替えた後、それぞれの変数の値を表示するプログラムを作成せよ。単に順序を変えて表示するだけではダメ。必ず変数の値を入れ替えること。下の実行例の場合、まず変数aに2、bに5が入力された状態から、aの値が5、bの値が2になるように入れ替える。
#
# 【実行例、下線部は入力例】
# $ ./knock47
# input a: 2
# input b: 5
# a = 5, b = 2
# $

require "minitest/autorun"
require "./knock47.rb"

class Knock47Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("a: 2\nb: 5")
    assert_output("a = 5, b = 2") { Knock47.execute }
  end
end
