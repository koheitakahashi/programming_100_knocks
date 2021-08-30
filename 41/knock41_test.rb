# No. 41 1桁の自然数?
# 整数値を入力させ、その値が一桁の自然数かそうでないか判定するプログラムを作成せよ。
#
#【実行例、下線部は入力例】
# $ ./knock41
# input number: 6
# 6 is a single figure.
# $ ./knock41
# input number: 10
# 10 is not a single figure.
# $ ./knock41
# input number: -3
# -3 is not a single figure.
# $ ./knock41
# input number: 0
# 0 is not a single figure.
# $

require "minitest/autorun"
require "./knock41.rb"

class Knock41Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("6")
    assert_output("6 is a single figure.") { Knock41.execute }
  end

  def test_case_2
    $stdin = StringIO.new("10")
    assert_output("10 is not a single figure.") { Knock41.execute }
  end

  def test_case_3
    $stdin = StringIO.new("-3")
    assert_output("-3 is not a single figure.") { Knock41.execute }
  end

  def test_case_4
    $stdin = StringIO.new("0")
    assert_output("0 is not a single figure.") { Knock41.execute }
  end
end
