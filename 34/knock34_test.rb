# No. 34 入力値抜き改
# 整数値を入力させ、1から9まで、入力値と入力値+1以外を表示するプログラムを作成せよ。入力値が9の場合は9のみ表示しない。
# 【実行例、下線部は入力例】
# $ ./knock34
# input number: 7
# 1
# 2
# 3
# 4
# 5
# 6
# 9
# $

require "minitest/autorun"
require "./knock34.rb"

class Knock34Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("7")

    stdout =<<~EOS
    1
    2
    3
    4
    5
    6
    9
    EOS

    assert_output(stdout.strip) { Knock34.execute }
  end
end
