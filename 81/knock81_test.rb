# No. 81 中間値 ☆
# ３つの整数値を入力させ、3つの値のうち2番目に大きい値を表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock81
# 3つの値を入力: 23 24 25
# 24
# $ ./knock81
# 3つの値を入力: 16 8 21
# 16
# $

require "minitest/autorun"
require "./knock81.rb"

class Knock81Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("23 24 35")

    assert_output("24") { Knock81.execute }
  end

  def test_case_2
    $stdin = StringIO.new("16 8 21")

    assert_output("16") { Knock81.execute }
  end
end

