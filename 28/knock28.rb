class Knock28
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = if input <= 0
               1
             else
               (1..input).inject { _1 * _2 }
             end

    $stdout.write("factorial = #{result}")
  end
end
