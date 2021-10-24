# No. 56 2進数変換
# 0〜65535の整数値を入力させ、入力値を16桁の2進数に変換して表示するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock56
# input number: 127
# 0000000001111111
# $ ./knock56
# input number: 10000
# 0010011100010000
# $ ./knock56
# input number: 65535
# 1111111111111111
# $

require "minitest/autorun"
require "./knock56.rb"

class Knock56Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("127")
    expected = "0000000001111111"
    assert_output(expected) { Knock56.execute }
  end

  def test_case_2
    $stdin = StringIO.new("10000")
    expected = "0010011100010000"
    assert_output(expected) { Knock56.execute }
  end

  def test_case_3
    $stdin = StringIO.new("65535")
    expected = "1111111111111111"
    assert_output(expected) { Knock56.execute }
  end
end
