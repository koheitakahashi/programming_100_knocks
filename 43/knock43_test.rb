# No. 43 2次方程式の解の判別
# 2次方程式 ax^2 + bx + c = 0 （x^2はxの2乗の意味）の係数a, b, cを入力し、2次方程式の解が2つの実数解か、重解か、2つの虚数解かを判別するプログラムを作成せよ。
#
# 【実行例、下線部は入力例】
# $ ./knock43
# input a: 4
# input b: -3
# input c: 1
# 2つの虚数解
# $ ./knock43
# input a: 1
# input b: 2
# input c: 1
# 重解
# $ ./knock43
# input a: 3
# input b: 2
# input c: -4
# 2つの実数解
# $
#
# これ、一番最初の入力だと2つの実数解になるのが正しい気がする。

require "minitest/autorun"
require "./knock43.rb"

class Knock43Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("a: 1\nb: -3\nc: 1")
    assert_output("2つの虚数解") { Knock43.execute }
  end

  def test_case_2
    $stdin = StringIO.new("a: 1\nb: 2\nc: 1")
    assert_output("重解") { Knock43.execute }
  end

  def test_case_3
    $stdin = StringIO.new("a: 3\nb: 2\nc: -4")
    assert_output("2つの実数解") { Knock43.execute }
  end
end
