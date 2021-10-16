# No. 52 閏年
# 西暦を入力したらその年が閏（うるう）年かどうかを判定するプログラムを作成せよ。なお、4で割り切れる年のうち、100で割り切れないか、400で割り切れる年は閏年である。
#
# 【実行例、下線部は入力例】
# $ ./knock52
# input year: 2015
# 2015年は閏年でない
# $ ./knock52
# input year: 2016
# 2016年は閏年である
# $ ./knock52
# input year: 2100
# 2100年は閏年でない
# $ ./knock52
# input year: 2000
# 2000年は閏年である
# $

require "minitest/autorun"
require "./knock52.rb"

class Knock52Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("2015")

    expected = "2015年は閏年でない"

    assert_output(expected) { Knock52.execute }
  end

  def test_case_2
    $stdin = StringIO.new("2016")

    expected = "2016年は閏年である"

    assert_output(expected) { Knock52.execute }
  end

  def test_case_3
    $stdin = StringIO.new("2100")

    expected = "2100年は閏年でない"

    assert_output(expected) { Knock52.execute }
  end

  def test_case_4
    $stdin = StringIO.new("2000")

    expected = "2000年は閏年である"

    assert_output(expected) { Knock52.execute }
  end
end
