# No. 32 5の倍数でbar
# 1から20まで順に表示するが、5の倍数の場合は数字の代わりにbarと表示するプログラムを作成せよ。
# 【実行例】
# $ ./knock32
# 1
# 2
# 3
# 4
# bar
# 6
# （途中、7から18まで省略）
# 19
# bar
# $

require "minitest/autorun"
require "./knock32.rb"

class Knock32Test < Minitest::Test
  def test_case_1
    stdout =<<~EOS
    1
    2
    3
    4
    Bar
    6
    7
    8
    9
    Bar
    11
    12
    13
    14
    Bar
    16
    17
    18
    19
    Bar
    EOS

    assert_output(stdout.strip) { Knock32.execute }
  end
end
