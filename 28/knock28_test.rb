# No. 28 nの階乗
# 整数値を入力させ、その値の階乗を表示するプログラムを作成せよ。ただし、0以下の値を入力した場合は1と表示する。
#
# 【実行例、下線部は入力例】
# $ ./knock28
# input number: 10
# factorial = 3628800
# $ ./knock28
# input number: -2
# factorial = 1
# $

require "minitest/autorun"
require "./knock28.rb"

class Knock28Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10")

    assert_output("factorial = 3628800") { Knock28.execute }
  end

  def test_case_2
    $stdin = StringIO.new("-2")

    assert_output("factorial = 1") { Knock28.execute }
  end
end
