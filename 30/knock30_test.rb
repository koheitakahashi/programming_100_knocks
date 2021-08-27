# No. 30 棒グラフ
# 整数値を入力させ、その個数だけ*を表示するプログラムを作成せよ。入力値が0以下の値の場合は何も書かなくてよい。
#
# 【実行例、下線部は入力例】
# $ ./knock30
# input number: 7
# *******
# $ ./knock30
# input number: 13
# *************
# $

require "minitest/autorun"
require "./knock30.rb"

class Knock30Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("7")

    assert_output("*******") { Knock30.execute }
  end
  def test_case_2
    $stdin = StringIO.new("13")

    assert_output("*************") { Knock30.execute }
  end
end
