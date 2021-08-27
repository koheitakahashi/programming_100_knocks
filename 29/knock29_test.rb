# No. 29 5つの合計
# 整数値を5回入力させ、それらの値の合計を表示するプログラムを繰り返しを使って作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock29
# input number: 11
# input number: 22
# input number: 33
# input number: 44
# input number: 55
# sum = 165
# $

require "minitest/autorun"
require "./knock29.rb"

class Knock29Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("11\n22\n33\n44\n55")

    assert_output("sum = 165") { Knock29.execute }
  end
end
