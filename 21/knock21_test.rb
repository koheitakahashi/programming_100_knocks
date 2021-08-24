# No. 21 5より大きく20より小さい
# 整数値を入力させ、その値が5よりも大きく、かつ、20よりも小さければOKと表示するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock21
# input number: 10
# OK
# $ ./knock21
# input number: 5
# $

require "minitest/autorun"
require "./knock21.rb"

class Knock21Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10")

    assert_output("OK") { Knock21.execute }
  end

  def test_case_2
    $stdin = StringIO.new("5")

    assert_output("") { Knock21.execute }
  end
end
