# No. 35 配列要素の参照
# {3, 7, 0, 8, 4, 1, 9, 6, 5, 2}で初期化される大きさ10の整数型配列を宣言し、整数値を入力させ、要素番号が入力値である配列要素の値を表示するプログラムを作成せよ。入力値が配列の要素の範囲外であるかどうかのチェックは省略してよい。
# 【実行例、下線部は入力例】
# $ ./knock35
# input index: 0
# array[0] = 3
# $ ./knock35
# input index: 5
# array[5] = 1
# $

require "minitest/autorun"
require "./knock35.rb"

class Knock35Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("0")
    assert_output("array[0] = 3") { Knock35.execute }
  end

  def test_case_2
    $stdin = StringIO.new("5")
    assert_output("array[5] = 1") { Knock35.execute }
  end
end
