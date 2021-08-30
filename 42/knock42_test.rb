# No. 42 小さい順?
# 整数値を3つ入力させ、それらの値が小さい順（等しくてもよい）に並んでいるか判定し、小さい順に並んでいる場合はOK、そうなっていない場合はNGと表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock42
# input number 1: 1
# input number 2: 2
# input number 3: 3
# OK
# $ ./knock42
# input number 1: 1
# input number 2: 1
# input number 3: 3
# OK
# $ ./knock42
# input number 1: 2
# input number 2: 1
# input number 3: 3
# NG
# $

require "minitest/autorun"
require "./knock42.rb"

class Knock42Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("1\n2\n3")
    assert_output("OK") { Knock42.execute }
  end

  def test_case_2
    $stdin = StringIO.new("1\n1\n3")
    assert_output("OK") { Knock42.execute }
  end

  def test_case_3
    $stdin = StringIO.new("2\n1\n3")
    assert_output("NG") { Knock42.execute }
  end
end
