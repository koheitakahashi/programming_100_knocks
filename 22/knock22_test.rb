# No. 22 -10以下または10以上
# 整数値を入力させ、その値が-10以下、または、10以上であればOKと表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock22
# input number: 10
# OK
# $ ./knock22
# input number: 0
# $

require "minitest/autorun"
require "./knock22.rb"

class Knock22Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10")

    assert_output("OK") { Knock22.execute }
  end

  def test_case_2
    $stdin = StringIO.new("0")

    assert_output("") { Knock22.execute }
  end
end

