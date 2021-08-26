# No. 25 -10未満?、-10以上0未満?、0以上?
# 整数値を入力させ、その値が-10未満ならrange 1、-10以上0未満であればrange 2、0以上であればrange 3、と表示するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock25
# input number: -15
# range 1
# $ ./knock25
# input number: -10
# range 2
# $ ./knock25
# input number: 0
# range 3
# $

require "minitest/autorun"
require "./knock25.rb"

class Knock25Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("-15")

    assert_output("range 1") { Knock25.execute }
  end

  def test_case_2
    $stdin = StringIO.new("-10")

    assert_output("range 2") { Knock25.execute }
  end

  def test_case_3
    $stdin = StringIO.new("0")

    assert_output("range 3") { Knock25.execute }
  end
end
