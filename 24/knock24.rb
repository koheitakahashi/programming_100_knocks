class Knock24
  def self.execute
    input = $stdin.gets.chomp.to_i

    result = if (-10...0).cover?(input)
               "OK"
             elsif input >= 10
               "OK"
             else
               "NG"
             end

    $stdout.write(result)
  end
end
