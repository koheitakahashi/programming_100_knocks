# No. 27 1からnまでの和
# 整数値を入力させ、1からその値までの総和を計算して表示するプログラムを作成せよ。ただし、0以下の値を入力した場合は0と表示する。
#
# 【実行例、下線部は入力例】
# $ ./knock27
# input number: 10
# sum = 55
# $ ./knock27
# input number: -2
# sum = 0
# $

require "minitest/autorun"
require "./knock27.rb"

class Knock27Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10")

    assert_output("sum = 55") { Knock27.execute }
  end

  def test_case_2
    $stdin = StringIO.new("-2")

    assert_output("sum = 0") { Knock27.execute }
  end
end
