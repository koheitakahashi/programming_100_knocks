# No. 46 入場料
# 神山美術館の入場料金は、一人600円であるが、5人以上のグループなら一人550円、20人以上の団体なら一人500円である。人数を入力し、入場料の合計を計算するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock46
# 人数 3
# 料金 1800
# $ ./knock46
# 人数 7
# 料金 3850
# $ ./knock46
# 人数 22
# 料金 11000
# $

require "minitest/autorun"
require "./knock46.rb"

class Knock46Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("3")
    assert_output("人数料金 1800") { Knock46.execute }
  end

  def test_case_2
    $stdin = StringIO.new("7")
    assert_output("人数料金 3850") { Knock46.execute }
  end

  def test_case_3
    $stdin = StringIO.new("22")
    assert_output("人数料金 11000") { Knock46.execute }
  end
end
