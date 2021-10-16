# No. 53 素因数分解
# 自然数の入力値を素因数分解して結果を表示するプログラムを作成せよ。
# 【実行例、下線部は入力例】
# $ ./knock53
# input number: 840
# 2 2 2 3 5 7
# $

require "minitest/autorun"
require "./knock53.rb"

class Knock53Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("840")

    expected = "2 2 2 3 5 7"

    assert_output(expected) { Knock53.execute }
  end
end
