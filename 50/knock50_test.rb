# No. 50 foobar
# 1から100までの値を繰り返しで表示するが、3の倍数の時はfoo、5の倍数の時はbarと数字の代わりに表示するプログラムを作成せよ。なお、3と5の両方の倍数の時はfoobarと表示される。
#
# 【実行例】
# $ ./knock50
# 1
# 2
# foo
# 4
# bar
# foo
# （途中省略）
# 97
# 98
# foo
# bar
# $

require "minitest/autorun"
require "./knock50.rb"

class Knock50Test < Minitest::Test
  def test_case_1
    expected = <<~EOS
    1
    2
    foo
    4
    bar
    foo
    7
    8
    foo
    bar
    11
    foo
    13
    14
    foobar
    16
    17
    foo
    19
    bar
    foo
    22
    23
    foo
    bar
    26
    foo
    28
    29
    foobar
    31
    32
    foo
    34
    bar
    foo
    37
    38
    foo
    bar
    41
    foo
    43
    44
    foobar
    46
    47
    foo
    49
    bar
    foo
    52
    53
    foo
    bar
    56
    foo
    58
    59
    foobar
    61
    62
    foo
    64
    bar
    foo
    67
    68
    foo
    bar
    71
    foo
    73
    74
    foobar
    76
    77
    foo
    79
    bar
    foo
    82
    83
    foo
    bar
    86
    foo
    88
    89
    foobar
    91
    92
    foo
    94
    bar
    foo
    97
    98
    foo
    bar
    EOS

    assert_output(expected) { Knock50.execute }
  end
end
