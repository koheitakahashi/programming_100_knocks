class Knock27
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = if input <= 0
               0
             else
               (1..input).sum
             end

    $stdout.write("sum = #{result}")
  end
end
