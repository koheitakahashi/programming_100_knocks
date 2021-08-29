# No. 36 続・配列要素の参照
# {3, 7, 0, 8, 4, 1, 9, 6, 5, 2}で初期化される大きさ10の整数型配列を宣言し、整数値を2つ入力させ、要素番号が入力値である2つの配列要素の値の積を計算して表示するプログラムを作成せよ。入力値が配列の要素の範囲外であるかどうかのチェックは省略してよい。
# 【実行例、下線部は入力例】
# $ ./knock36
# input index1: 3
# input index2: 6
# 8 * 9 = 72
# $

require "minitest/autorun"
require "./knock36.rb"

class Knock35Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("3\n6")
    assert_output("8 * 9 = 72") { Knock36.execute }
  end
end
