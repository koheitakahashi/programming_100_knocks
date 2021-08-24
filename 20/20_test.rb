# 整数値を2つ入力させ、1つめの値を2つめの値で割った結果を表示し、続けてその結果に2つめの値を掛けた結果を表示するプログラムを作成せよ。計算はすべて整数型で行うこと（割り切れない場合は自動的に小数点以下が切り捨てられる）。

# 実行例
# 【実行例、下線部は入力例】
# $ ./knock20
# input 1st value: 10
# input 2nd value: 3
# result: 3
# result: 9
# $

# frozen_string_literal: true

require "minitest/autorun"
require "./20.rb"

class No20Test < Minitest::Test
  def test_when_giving_10_and_3
    $stdin = StringIO.new("10, 3")

    assert_output("result: 3\nresult: 9") { No20.execute }
  end
end
