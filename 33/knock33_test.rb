# No. 33 入力値抜き
# 整数値を入力させ、1から9まで、入力値以外を表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock33
# input number: 7
# 1
# 2
# 3
# 4
# 5
# 6
# 8
# 9
# $

require "minitest/autorun"
require "./knock33.rb"

class Knock33Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("2")

    stdout =<<~EOS
    1
    3
    4
    5
    6
    7
    8
    9
    EOS

    assert_output(stdout.strip) { Knock33.execute }
  end
end
