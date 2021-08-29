# No. 37 続々・配列要素の参照
# {3, 7, 0, 8, 4, 1, 9, 6, 5, 2}で初期化される大きさ10の整数型配列を宣言し、整数値を入力させ、要素番号が入力値の配列要素の値を参照し、さらにその参照した値を要素番号とする配列要素の値を参照して表示するプログラムを作成せよ。入力値が配列の要素の範囲外であるかどうかのチェックは省略してよい。
# 【実行例、下線部は入力例】
# $ ./knock37
# input index: 8
# value = 1
# $

require "minitest/autorun"
require "./knock37.rb"

class Knock37Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("8")
    assert_output("value = 1") { Knock37.execute }
  end
end
