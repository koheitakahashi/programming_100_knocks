# No. 55 夢想花again
#
# 「とんで」を9回「まわって」を3回繰り返した後「まわる」と表示して改行する、を3回繰り返すプログラムを作成せよ。「とんで」「まわって」と3行文の繰り返しは必ず繰り返し構文を使うこと。
#
# 【実行例】
# $ ./knock55
# とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
# とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
# とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
# $

require "minitest/autorun"
require "./knock55.rb"

class Knock55Test < Minitest::Test
  def test_case_1
    expected =<<~EOS
    とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
    とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
    とんでとんでとんでとんでとんでとんでとんでとんでとんでまわってまわってまわってまわる
    EOS

    assert_output(expected) { Knock55.execute }
  end
end
