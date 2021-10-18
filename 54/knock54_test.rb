# No. 54 最大最小
# まずデータの個数を入力させ、次にデータの個数だけ整数値を入力させる。この入力データの中で最大値と最小値を求め表示するプログラムを作成せよ。データの個数は100個までとする。なお、データの個数とデータはファイルからリダイレクトで入力させればよいので、入力のためのメッセージは不要である（実行例を参照すること）。
#
# 【実行例、データファイルは下のリンクから取得せよ】
# $ ./knock54 < small.data
# 最小値 = 128, 最大値 = 962
# $ ./knock54 < middle.data
# 最小値 = 20, 最大値 = 988
# $ ./knock54 < large.data
# 最小値 = 5, 最大値 = 996
# $

require "minitest/autorun"
require "./knock54.rb"

class Knock54Test < Minitest::Test
  def test_case_1
    input = File.open("./small.txt", "r").read
    $stdin = StringIO.new(input)

    # 例題だと最小値 = 128 となっているが、10が正しそう
    expected = "最小値 = 10, 最大値 = 962"
    assert_output(expected) { Knock54.execute }
  end

  def test_case_2
    input = File.open("./middle.txt", "r").read
    $stdin = StringIO.new(input)

    expected = "最小値 = 20, 最大値 = 988"
    assert_output(expected) { Knock54.execute }
  end

  def test_case_3
    input = File.open("./large.txt", "r").read
    $stdin = StringIO.new(input)

    expected = "最小値 = 5, 最大値 = 996"
    assert_output(expected) { Knock54.execute }
  end
end
