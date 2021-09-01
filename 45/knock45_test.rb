# No. 45 タクシー料金
# 初乗り料金が1700mまで610円、それ以降は313mごとに80円のタクシーがある。このタクシーに乗った距離をm単位で入力し、料金を計算するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock45
# 距離 10000
# 金額 2770
# $ ./knock45
# 距離 2013
# 金額 690
# $ ./knock45
# 距離 2014
# 金額 770
# $

require "minitest/autorun"
require "./knock45.rb"

class Knock45Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10000")
    assert_output("距離金額 2770") { Knock45.execute }
  end

  def test_case_2
    $stdin = StringIO.new("2013")
    assert_output("距離金額 690") { Knock45.execute }
  end

  def test_case_3
    $stdin = StringIO.new("2014")
    assert_output("距離金額 770") { Knock45.execute }
  end
end
