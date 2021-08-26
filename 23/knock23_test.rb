# No. 23 -5以上10未満
# 整数値を入力させ、その値が-5以上10未満であればOK、そうでなければNGと表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock23
# input number: 0
# OK
# $ ./knock23
# input number: 10
# NG
# $

require "minitest/autorun"
require "./knock23.rb"

class Knock23Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("0")

    assert_output("OK") { Knock23.execute }
  end

  def test_case_2
    $stdin = StringIO.new("10")

    assert_output("NG") { Knock23.execute }
  end
end
