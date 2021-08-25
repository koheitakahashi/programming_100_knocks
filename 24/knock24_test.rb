# No. 24 -10以上0未満、または、10以上
# 整数値を入力させ、その値が-10以上0未満、または、10以上であればOK、そうでなければNGと表示するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock24
# input number: -5
# OK
# $ ./knock24
# input number: 10
# OK
# $ ./knock24
# input number: 5
# NG
# $

require "minitest/autorun"
require "./knock24.rb"

class Knock22Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("-5")

    assert_output("OK") { Knock24.execute }
  end

  def test_case_2
    $stdin = StringIO.new("10")

    assert_output("OK") { Knock24.execute }
  end

  def test_case_3
    $stdin = StringIO.new("5")

    assert_output("NG") { Knock24.execute }
  end
end
