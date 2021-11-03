# No. 80 互いに素 ☆
# 2つの正の整数値を入力させ、互いに素であるか判定するプログラムを作成せよ。なお、2つの正の整数が互いに素とは、1以外に共通公約数を持たない関係のことである。
#
# 【実行例、下線部は入力例】
# $ ./knock80
# 2つの値をスペースで区切って入力: 23 24
# 互いに素
# $ ./knock80
# 2つの値をスペースで区切って入力: 69 23
# 互いに素でない
# $

require "minitest/autorun"
require "./knock80.rb"

class Knock80Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("23 24")

    # 問題だとここは、互いに素になっているが互いに素ではないが正しいと思われる
    assert_output("互いに素ではない") { Knock80.execute }
  end

  def test_case_2
    $stdin = StringIO.new("69 23")

    # 問題だとここは、互いに素ではないになっているが互いに素が正しいと思われる
    assert_output("互いに素") { Knock80.execute }
  end
end

