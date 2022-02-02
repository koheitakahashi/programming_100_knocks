# No. 83 じゃんけん5回勝負 ☆
#
# 次の仕様のじゃんけんプログラムを作成せよ。
# ・人間は、グー、チョキ、パーをそれぞれ0、1、2の数字で入力する。
# ・コンピュータは乱数を使って出す手を選ぶ。乱数の使い方は演習資料の高度なテクニック集を見よ。
# ・5回勝負として、人間とコンピュータの勝った回数を数え、勝敗がつくたびに1回ずつ表示する。あいこは決着がつくまで再勝負。途中でどちらかが3勝しても、5回最後まで勝負を続ける。
# ・指定された範囲以外の値を入力したら負けにする
#
# 【実行例。下線部は入力値の例。メッセージはこの通りでなくてよい。】
# $ ./knock83
# あなたの手を選んでください(グー0、チョキ1、パー2): 0
# コンピュータはチョキ
# あなたの勝ち
# あなた1勝、わたし0勝
# あなたの手を選んでください(グー0、チョキ1、パー2): 2
# コンピュータはパー
# あいこ
# あなたの手を選んでください(グー0、チョキ1、パー2): 2
# コンピュータはチョキ
# わたしの勝ち
# あなた1勝、わたし1勝
# あなたの手を選んでください(グー0、チョキ1、パー2): 3
# そんな手はありません。あなたの負け
# あなた1勝、わたし2勝
# （中略）
# あなた3勝、わたし2勝
# あなたの総合勝利です。参りました。
# $
#

require "minitest/autorun"
require "./knock83.rb"

class Knock83Test < Minitest::Test
  def test_case_1
    $stdin = StringIO.new("0")
    $stdin = StringIO.new("2")
    $stdin = StringIO.new("2")
    $stdin = StringIO.new("2")
    $stdin = StringIO.new("3")


    # assert_output(expected) { Knock82.execute }
    Knock82.execute
  end
end

