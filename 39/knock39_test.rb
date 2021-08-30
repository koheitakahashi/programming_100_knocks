# No. 39 もっと・配列要素の参照
# {3, 7, 0, 8, 4, 1, 9, 6, 5, 2}で初期化される大きさ10の整数型配列を宣言し、最初は参照する要素番号を0とする。この参照する要素番号の配列要素の値から次の要素番号の配列要素の値を引いた値を表示し、参照する要素番号を1増やす。この手順を9回繰り返すプログラムを作成せよ。（具体的にどのような手順かは実行例を見て考えよう。）
#
# 【実行例】
# $ ./knock39
# -4
# 7
# -8
# 4
# 3
# -8
# 3
# 1
# 3
# $

require "minitest/autorun"
require "./knock39.rb"

class Knock39Test < Minitest::Test
  def test_case_1
    # この参照する要素番号の配列要素の値から次の要素番号の配列要素の値を引いた値を表示し、参照する要素番号を1増やす

    expected =<<~EOS
    -4
    7
    -8
    4
    3
    -8
    3
    1
    3
    EOS

    assert_output(expected.chomp) { Knock39.execute }
  end
end
