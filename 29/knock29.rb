class Knock29
  MAX_RECEIVING_MULTI_LINE_FROM_STDIN = 5

  def self.execute
    input = (1..MAX_RECEIVING_MULTI_LINE_FROM_STDIN).map{ $stdin.gets.chomp.to_i }

    result = input.sum

    $stdout.write("sum = #{result}")
  end
end
