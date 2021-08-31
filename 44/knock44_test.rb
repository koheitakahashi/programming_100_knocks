# No. 44 通貨換算
# 換算したい金額（円単位）と1ドル何円かを整数値で入力すると、入力した金額が何ドル何セントか計算して表示するプログラムを作成せよ。1セントは1/100ドルである。結果は整数値でよい（1セント未満の端数切り捨て）。
#
# 【実行例、下線部は入力例】
# $ ./knock44
# 何円? 10000
# 1ドルは何円? 120
# 10000円は83ドル33セント
# $ ./knock44
# 何円? 15000
# 1ドルは何円? 125
# 15000円は120ドル0セント
# $

require "minitest/autorun"
require "./knock44.rb"

class Knock44Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("10000\n120")
    assert_output("何円?1ドルは何円?10000円は83ドル33セント") { Knock44.execute }
  end

  def test_case_2
    $stdin = StringIO.new("15000\n125")
    assert_output("何円?1ドルは何円?15000円は120ドル0セント") { Knock44.execute }
  end
end
