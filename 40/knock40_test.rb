# No. 40 even or odd
# 整数値を入力させ、その値が偶数ならばeven、奇数ならばoddと表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock40
# input number: 6
# 6 is even.
# $ ./knock40
# input number: 7
# 7 is odd.
# $

require "minitest/autorun"
require "./knock40.rb"

class Knock40Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("6")
    assert_output("6 is even.") { Knock40.execute }
  end

  def test_case_2
    $stdin = StringIO.new("7")
    assert_output("7 is odd.") { Knock40.execute }
  end
end
