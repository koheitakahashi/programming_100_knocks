# No. 58 棒グラフ
# 0以上の整数値を5つ入力させ、それぞれの値に対して、次の形式でグラフを描くプログラムを作成せよ。
# 形式：左端に値を表示し、適切に空白を空けて":"を書く（:で揃えるためにタブ\tを使うとよい）。その後ろに値の数だけ*を描くが、5個おきに空白を１つ入れる。具体例は下記の実行例を参照すること。
#
# 【実行例、下線部は入力例】
# $ ./knock58
# input data[0]: 7
# input data[1]: 10
# input data[2]: 14
# input data[3]: 15
# input data[4]: 21
# 7	:***** **
# 10	:***** *****
# 14	:***** ***** ****
# 15	:***** ***** *****
# 21	:***** ***** ***** ***** *
# $

require "minitest/autorun"
require "./Knock58.rb"

class Knock58Test < Minitest::Test
  def test_case_1
    input = <<~EOS
    7
    10
    14
    15
    21
    EOS

    $stdin = StringIO.new(input)

    expected = <<~EOS
    :***** **
    :***** *****
    :***** ***** ****
    :***** ***** *****
    :***** ***** ***** ***** *
    EOS

    assert_output(expected) { Knock58.execute }
  end
end
