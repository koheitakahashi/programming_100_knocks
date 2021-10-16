# No. 51 お支払い
# 指定した金額を100円玉と10円玉と1円玉だけで、できるだけ少ない枚数で支払いたい。金額を入力するとそれぞれの枚数を計算して表示するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock51
# input money: 12345
# 100円玉123枚, 10円玉4枚, 1円玉5枚
# $

require "minitest/autorun"
require "./knock51.rb"

class Knock51Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("12345")

    expected = "100円玉123枚, 10円玉4枚, 1円玉5枚"

    assert_output(expected) { Knock51.execute }
  end
end
