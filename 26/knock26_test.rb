# No. 26 switch-case
# 整数値を入力させ、その値が1ならone、2ならtwo、3ならthree、それ以外ならothersと表示するプログラムをswicth-case文を使って作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock26
# input number: 1
# one
# $ ./knock26
# input number: 2
# two
# $ ./knock26
# input number: 3
# three
# $ ./knock26
# input number: 0
# others
# $

require "minitest/autorun"
require "./knock26.rb"

class Knock26Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("1")

    assert_output("one") { Knock26.execute }
  end

  def test_case_2
    $stdin = StringIO.new("2")

    assert_output("two") { Knock26.execute }
  end

  def test_case_3
    $stdin = StringIO.new("3")

    assert_output("three") { Knock26.execute }
  end

  def test_case_4
    $stdin = StringIO.new("0")

    assert_output("others") { Knock26.execute }
  end
end
